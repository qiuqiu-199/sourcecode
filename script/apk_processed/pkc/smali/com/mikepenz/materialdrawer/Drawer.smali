.class public Lcom/mikepenz/materialdrawer/Drawer;
.super Ljava/lang/Object;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;,
        Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;,
        Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;,
        Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;
    }
.end annotation


# instance fields
.field protected final mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

.field private originalDrawerItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private originalDrawerState:Landroid/os/Bundle;

.field private originalOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

.field private originalOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;


# direct methods
.method protected constructor <init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    return-void
.end method

.method private getStickyFooterShadow()Landroid/view/View;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadowView:Landroid/view/View;

    return-object v0
.end method

.method private setItems(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;Z)V"
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 788
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    .line 790
    :cond_0
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/IItemAdapter;->setNewList(Ljava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;

    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    return-object v0
.end method

.method public getDrawerItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItemAdapter;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object v0
.end method

.method public getOnDrawerItemLongClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;
    .locals 1

    .line 933
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    return-object v0
.end method

.method public getPosition(J)I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-static {v0, p1, p2}, Lcom/mikepenz/materialdrawer/DrawerUtils;->getPositionByIdentifier(Lcom/mikepenz/materialdrawer/DrawerBuilder;J)I

    move-result p1

    return p1
.end method

.method public getStickyFooter()Landroid/view/View;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isDrawerOpen()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetDrawerContent()V
    .locals 2

    .line 997
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->switchedDrawerContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 999
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)V

    .line 1000
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    invoke-virtual {p0, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setOnDrawerItemLongClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;)V

    .line 1001
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mikepenz/materialdrawer/Drawer;->setItems(Ljava/util/List;Z)V

    .line 1002
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState(Landroid/os/Bundle;)Lcom/mikepenz/fastadapter/FastAdapter;

    const/4 v0, 0x0

    .line 1004
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    .line 1005
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    .line 1006
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    .line 1007
    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerState:Landroid/os/Bundle;

    .line 1010
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1013
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooter()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooter()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    :cond_0
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterShadow()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1017
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterShadow()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    if-eqz v0, :cond_2

    .line 1022
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iput-boolean v1, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mSelectionListShown:Z

    :cond_2
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    const-string v1, "_selection"

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_sticky_footer_selection"

    .line 1037
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bundle_drawer_content_switched"

    .line 1038
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->switchedDrawerContent()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    const-string v1, "_selection_appended"

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bundle_sticky_footer_selection_appended"

    .line 1041
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget v1, v1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "bundle_drawer_content_switched_appended"

    .line 1042
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->switchedDrawerContent()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public setOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-void
.end method

.method public setOnDrawerItemLongClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;)V
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iput-object p1, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    return-void
.end method

.method public setSelection(JZ)Z
    .locals 0

    .line 512
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer;->getPosition(J)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/mikepenz/materialdrawer/Drawer;->setSelectionAtPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public setSelectionAtPosition(IZ)Z
    .locals 4

    .line 567
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    .line 569
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p1, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->select(IZ)V

    if-eqz p2, :cond_1

    if-ltz p1, :cond_1

    .line 571
    iget-object p2, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object p2, p2, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p2

    check-cast p2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 573
    instance-of v0, p2, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v0

    invoke-interface {v0, v2, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    invoke-interface {v0, v2, p1, p2}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    .line 583
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/Drawer;->mDrawerBuilder:Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->resetStickyFooterSelection()V

    :cond_2
    return v1
.end method

.method public switchDrawerContent(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;",
            "Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;",
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;I)V"
        }
    .end annotation

    .line 969
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->switchedDrawerContent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 971
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    .line 972
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getOnDrawerItemLongClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

    .line 973
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerState:Landroid/os/Bundle;

    .line 974
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(Z)V

    .line 975
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    .line 979
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/materialdrawer/Drawer;->setOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)V

    .line 980
    invoke-virtual {p0, p2}, Lcom/mikepenz/materialdrawer/Drawer;->setOnDrawerItemLongClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;)V

    const/4 p1, 0x1

    .line 981
    invoke-direct {p0, p3, p1}, Lcom/mikepenz/materialdrawer/Drawer;->setItems(Ljava/util/List;Z)V

    .line 982
    invoke-virtual {p0, p4, v1}, Lcom/mikepenz/materialdrawer/Drawer;->setSelectionAtPosition(IZ)Z

    .line 985
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooter()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    .line 986
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooter()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 988
    :cond_1
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterShadow()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 989
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/Drawer;->getStickyFooterShadow()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public switchedDrawerContent()Z
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerItems:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/Drawer;->originalDrawerState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
