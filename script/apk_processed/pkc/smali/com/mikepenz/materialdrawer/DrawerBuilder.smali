.class public Lcom/mikepenz/materialdrawer/DrawerBuilder;
.super Ljava/lang/Object;
.source "DrawerBuilder.java"


# instance fields
.field protected mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

.field protected mAccountHeaderSticky:Z

.field protected mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field protected mActionBarDrawerToggleEnabled:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mAdapterWrapper:Landroid/support/v7/widget/RecyclerView$Adapter;

.field protected mAnimateActionBarDrawerToggle:Z

.field protected mAppended:Z

.field protected mCloseOnClick:Z

.field protected mCurrentStickyFooterSelection:I

.field protected mCustomView:Landroid/view/View;

.field protected mDelayDrawerClickEvent:I

.field protected mDelayOnDrawerClose:I

.field protected mDisplayBelowStatusBar:Ljava/lang/Boolean;

.field protected mDrawerGravity:Ljava/lang/Integer;

.field protected mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field protected mDrawerWidth:I

.field protected mFireInitialOnClick:Z

.field protected mFooterAdapter:Lcom/mikepenz/fastadapter/adapters/FooterAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/FooterAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mFooterClickable:Z

.field protected mFooterDivider:Z

.field protected mFooterView:Landroid/view/View;

.field protected mFullscreen:Z

.field protected mGenerateMiniDrawer:Z

.field protected mHasStableIds:Z

.field protected mHeaderAdapter:Lcom/mikepenz/fastadapter/adapters/HeaderAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/HeaderAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeaderDivider:Z

.field protected mHeaderPadding:Z

.field protected mHeaderView:Landroid/view/View;

.field protected mHeiderHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

.field private mInnerShadow:Z

.field protected mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/ItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field protected mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field protected mMaterialize:Lcom/mikepenz/materialize/Materialize;

.field protected mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

.field protected mMultiSelect:Z

.field protected mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

.field protected mOnDrawerItemLongClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemLongClickListener;

.field protected mOnDrawerListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerListener;

.field protected mOnDrawerNavigationListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerNavigationListener;

.field protected mPositionBasedStateManagement:Z

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected mRootView:Landroid/view/ViewGroup;

.field protected mSavedInstance:Landroid/os/Bundle;

.field protected mScrollToTopAfterClick:Z

.field protected mSelectedItemIdentifier:J

.field protected mSelectedItemPosition:I

.field protected mShowDrawerOnFirstLaunch:Z

.field protected mSliderBackgroundColor:I

.field protected mSliderBackgroundColorRes:I

.field protected mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field protected mSliderBackgroundDrawableRes:I

.field protected mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

.field protected mStickyDrawerItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mStickyFooterDivider:Z

.field protected mStickyFooterShadow:Z

.field protected mStickyFooterShadowView:Landroid/view/View;

.field protected mStickyFooterView:Landroid/view/ViewGroup;

.field protected mStickyHeaderShadow:Z

.field protected mStickyHeaderView:Landroid/view/View;

.field protected mSystemUIHidden:Z

.field protected mToolbar:Landroid/support/v7/widget/Toolbar;

.field protected mTranslucentNavigationBar:Z

.field protected mTranslucentNavigationBarProgrammatically:Z

.field protected mTranslucentStatusBar:Z

.field protected mUsed:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    const/4 v1, -0x1

    .line 72
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    .line 73
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    const/4 v2, 0x1

    .line 144
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    .line 171
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mInnerShadow:Z

    .line 200
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBar:Z

    .line 220
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBarProgrammatically:Z

    .line 239
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    .line 260
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    .line 337
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColor:I

    .line 338
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    const/4 v3, 0x0

    .line 339
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawableRes:I

    .line 393
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerWidth:I

    const v1, 0x800003

    .line 437
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    .line 452
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeaderSticky:Z

    .line 480
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAnimateActionBarDrawerToggle:Z

    .line 497
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggleEnabled:Z

    .line 526
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mScrollToTopAfterClick:Z

    .line 542
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderDivider:Z

    .line 543
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderPadding:Z

    .line 544
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeiderHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    .line 612
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderShadow:Z

    .line 657
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterDivider:Z

    .line 658
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterClickable:Z

    .line 715
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterDivider:Z

    .line 719
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadow:Z

    .line 774
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFireInitialOnClick:Z

    .line 788
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMultiSelect:Z

    .line 805
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    const-wide/16 v4, 0x0

    .line 819
    iput-wide v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemIdentifier:J

    .line 848
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHasStableIds:Z

    .line 867
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mPositionBasedStateManagement:Z

    .line 869
    new-instance v1, Lcom/mikepenz/fastadapter/adapters/HeaderAdapter;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/adapters/HeaderAdapter;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderAdapter:Lcom/mikepenz/fastadapter/adapters/HeaderAdapter;

    .line 870
    new-instance v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 871
    new-instance v1, Lcom/mikepenz/fastadapter/adapters/FooterAdapter;

    invoke-direct {v1}, Lcom/mikepenz/fastadapter/adapters/FooterAdapter;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterAdapter:Lcom/mikepenz/fastadapter/adapters/FooterAdapter;

    .line 950
    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 986
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    .line 1076
    iput-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCloseOnClick:Z

    const/16 v1, 0x32

    .line 1090
    iput v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    .line 1107
    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayDrawerClickEvent:I

    .line 1180
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerOnFirstLaunch:Z

    .line 1194
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mGenerateMiniDrawer:Z

    .line 1195
    iput-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    .line 85
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    return-void
.end method

.method private createContent()V
    .locals 10

    .line 1571
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCustomView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 1572
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1576
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1577
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1582
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const v4, 0x800003

    if-ge v0, v3, :cond_4

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_4

    .line 1583
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1584
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_1

    sget v5, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_right:I

    goto :goto_0

    :cond_1
    sget v5, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_left:I

    :goto_0
    iget-object v6, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    goto :goto_2

    .line 1586
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_3

    sget v5, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_left:I

    goto :goto_1

    :cond_3
    sget v5, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_right:I

    :goto_1
    iget-object v6, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    .line 1592
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_a

    .line 1593
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v7, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_recycler_view:I

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v0, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1594
    sget v7, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_recycler_view:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView;

    iput-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1596
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 1598
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/RecyclerView;->setFadingEdgeLength(I)V

    .line 1602
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1604
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1607
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDisplayBelowStatusBar:Ljava/lang/Boolean;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDisplayBelowStatusBar:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    iget-boolean v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    if-nez v7, :cond_6

    .line 1608
    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/mikepenz/materialize/util/UIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v7

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    .line 1611
    :goto_3
    iget-object v8, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    .line 1612
    iget-boolean v9, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBar:Z

    if-nez v9, :cond_7

    iget-boolean v9, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    if-eqz v9, :cond_9

    :cond_7
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v3, :cond_9

    iget-boolean v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    if-nez v3, :cond_9

    if-eq v8, v5, :cond_8

    const/4 v3, 0x2

    if-ne v8, v3, :cond_9

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 1615
    invoke-static {v3}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->isSystemBarOnBottom(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1616
    :cond_8
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/mikepenz/materialize/util/UIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    .line 1619
    :goto_4
    iget-object v8, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v6, v7, v6, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_5

    .line 1621
    :cond_a
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1624
    :goto_5
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1628
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1629
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v1, v0, v3}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1631
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mInnerShadow:Z

    if-eqz v0, :cond_c

    .line 1632
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    sget v1, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_inner_shadow:I

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1633
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1634
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1635
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_b

    .line 1636
    sget v1, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 1638
    :cond_b
    sget v1, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1643
    :cond_c
    :goto_6
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColor:I

    if-eqz v0, :cond_d

    .line 1644
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setBackgroundColor(I)V

    goto :goto_7

    .line 1645
    :cond_d
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    if-eq v0, v2, :cond_e

    .line 1646
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundColorRes:I

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setBackgroundColor(I)V

    goto :goto_7

    .line 1647
    :cond_e
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 1648
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1649
    :cond_f
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawableRes:I

    if-eq v0, v2, :cond_10

    .line 1650
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderBackgroundDrawableRes:I

    invoke-static {v0, v1}, Lcom/mikepenz/materialize/util/UIUtils;->setBackground(Landroid/view/View;I)V

    .line 1654
    :cond_10
    :goto_7
    invoke-static {p0}, Lcom/mikepenz/materialdrawer/DrawerUtils;->handleHeaderView(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    .line 1657
    new-instance v0, Lcom/mikepenz/materialdrawer/DrawerBuilder$4;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$4;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    invoke-static {p0, v0}, Lcom/mikepenz/materialdrawer/DrawerUtils;->handleFooterView(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/view/View$OnClickListener;)V

    .line 1666
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMultiSelect:Z

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withMultiSelect(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1667
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMultiSelect:Z

    if-eqz v0, :cond_11

    .line 1668
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v6}, Lcom/mikepenz/fastadapter/FastAdapter;->withSelectOnLongClick(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1669
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v5}, Lcom/mikepenz/fastadapter/FastAdapter;->withAllowDeselection(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1673
    :cond_11
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapterWrapper:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_12

    .line 1674
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_8

    .line 1676
    :cond_12
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapterWrapper:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1680
    :goto_8
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    if-nez v0, :cond_13

    iget-wide v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemIdentifier:J

    const-wide/16 v3, 0x0

    cmp-long v7, v0, v3

    if-eqz v7, :cond_13

    .line 1681
    iget-wide v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemIdentifier:J

    invoke-static {p0, v0, v1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->getPositionByIdentifier(Lcom/mikepenz/materialdrawer/DrawerBuilder;J)I

    move-result v0

    iput v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    .line 1683
    :cond_13
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    if-nez v0, :cond_14

    .line 1684
    iput v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    .line 1686
    :cond_14
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    .line 1687
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemPosition:I

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->select(I)V

    .line 1690
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/materialdrawer/DrawerBuilder$5;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$5;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withOnClickListener(Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1741
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    new-instance v1, Lcom/mikepenz/materialdrawer/DrawerBuilder$6;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$6;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withOnLongClickListener(Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1751
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_15

    .line 1752
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1756
    :cond_15
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 1757
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    if-nez v0, :cond_16

    .line 1758
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v4, "_selection"

    invoke-virtual {v0, v3, v4}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1759
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v3, "bundle_sticky_footer_selection"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0, v1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->setStickyFooterSelection(Lcom/mikepenz/materialdrawer/DrawerBuilder;ILjava/lang/Boolean;)V

    goto :goto_9

    .line 1761
    :cond_16
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v4, "_selection_appended"

    invoke-virtual {v0, v3, v4}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 1762
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v3, "bundle_sticky_footer_selection_appended"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0, v1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->setStickyFooterSelection(Lcom/mikepenz/materialdrawer/DrawerBuilder;ILjava/lang/Boolean;)V

    .line 1767
    :cond_17
    :goto_9
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFireInitialOnClick:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    if-eqz v0, :cond_19

    .line 1768
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1769
    :goto_a
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    invoke-virtual {p0, v2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getDrawerItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    :cond_19
    return-void
.end method

.method private handleShowOnFirstLaunch()V
    .locals 3

    .line 1229
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mShowDrawerOnFirstLaunch:Z

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "navigation_drawer_learned"

    const/4 v2, 0x0

    .line 1232
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1234
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1237
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "navigation_drawer_learned"

    const/4 v2, 0x1

    .line 1238
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs addDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    .line 981
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;

    return-object p0
.end method

.method public build()Lcom/mikepenz/materialdrawer/Drawer;
    .locals 4

    .line 1250
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    if-eqz v0, :cond_0

    .line 1251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must not reuse a DrawerBuilder builder"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1254
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please pass an activity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    .line 1258
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mUsed:Z

    .line 1261
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-nez v1, :cond_2

    const/4 v1, -0x1

    .line 1262
    invoke-virtual {p0, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withDrawerLayout(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    .line 1266
    :cond_2
    new-instance v1, Lcom/mikepenz/materialize/MaterializeBuilder;

    invoke-direct {v1}, Lcom/mikepenz/materialize/MaterializeBuilder;-><init>()V

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 1267
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialize/MaterializeBuilder;->withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    .line 1268
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialize/MaterializeBuilder;->withRootView(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    .line 1269
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialize/MaterializeBuilder;->withFullscreen(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSystemUIHidden:Z

    .line 1270
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialize/MaterializeBuilder;->withSystemUIHidden(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1271
    invoke-virtual {v1, v2}, Lcom/mikepenz/materialize/MaterializeBuilder;->withUseScrimInsetsLayout(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentStatusBar:Z

    .line 1272
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTransparentStatusBar(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBarProgrammatically:Z

    .line 1273
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withTranslucentNavigationBarProgrammatically(Z)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 1274
    invoke-virtual {v1, v3}, Lcom/mikepenz/materialize/MaterializeBuilder;->withContainer(Landroid/view/ViewGroup;)Lcom/mikepenz/materialize/MaterializeBuilder;

    move-result-object v1

    .line 1275
    invoke-virtual {v1}, Lcom/mikepenz/materialize/MaterializeBuilder;->build()Lcom/mikepenz/materialize/Materialize;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMaterialize:Lcom/mikepenz/materialize/Materialize;

    .line 1278
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1, v2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->handleDrawerNavigation(Landroid/app/Activity;Z)V

    .line 1281
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->buildView()Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object v1

    .line 1284
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    sget v3, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_slider_layout:I

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setId(I)V

    .line 1286
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/widget/DrawerLayout;->addView(Landroid/view/View;I)V

    return-object v1
.end method

.method public buildView()Lcom/mikepenz/materialdrawer/Drawer;
    .locals 5

    .line 1469
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_slider:I

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    .line 1470
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_background:I

    sget v4, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_background:I

    invoke-static {v1, v2, v4}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setBackgroundColor(I)V

    .line 1472
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1477
    invoke-static {p0, v0}, Lcom/mikepenz/materialdrawer/DrawerUtils;->processDrawerLayoutParams(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-result-object v0

    .line 1479
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1483
    :cond_0
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->createContent()V

    .line 1486
    new-instance v0, Lcom/mikepenz/materialdrawer/Drawer;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/Drawer;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    .line 1488
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    if-eqz v1, :cond_1

    .line 1489
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/AccountHeader;->setDrawer(Lcom/mikepenz/materialdrawer/Drawer;)V

    .line 1493
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    const-string v2, "bundle_drawer_content_switched"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1494
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/AccountHeader;->toggleSelectionList(Landroid/content/Context;)V

    .line 1498
    :cond_2
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->handleShowOnFirstLaunch()V

    .line 1501
    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAppended:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mGenerateMiniDrawer:Z

    if-eqz v1, :cond_3

    .line 1503
    new-instance v1, Lcom/mikepenz/materialdrawer/MiniDrawer;

    invoke-direct {v1}, Lcom/mikepenz/materialdrawer/MiniDrawer;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mikepenz/materialdrawer/MiniDrawer;->withDrawer(Lcom/mikepenz/materialdrawer/Drawer;)Lcom/mikepenz/materialdrawer/MiniDrawer;

    move-result-object v1

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->withAccountHeader(Lcom/mikepenz/materialdrawer/AccountHeader;)Lcom/mikepenz/materialdrawer/MiniDrawer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mPositionBasedStateManagement:Z

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/MiniDrawer;->withPositionBasedStateManagement(Z)Lcom/mikepenz/materialdrawer/MiniDrawer;

    move-result-object v1

    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mMiniDrawer:Lcom/mikepenz/materialdrawer/MiniDrawer;

    :cond_3
    const/4 v1, 0x0

    .line 1507
    iput-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected closeDrawerDelayed()V
    .locals 4

    .line 1777
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCloseOnClick:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_1

    .line 1778
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 1779
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;

    invoke-direct {v1, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$7;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    iget v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDelayOnDrawerClose:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    if-nez v0, :cond_0

    .line 907
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/FastAdapter;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 908
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withSelectable(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 909
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withAllowDeselection(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 910
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHasStableIds:Z

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->setHasStableIds(Z)V

    .line 911
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-boolean v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mPositionBasedStateManagement:Z

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->withPositionBasedStateManagement(Z)Lcom/mikepenz/fastadapter/FastAdapter;

    .line 914
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderAdapter:Lcom/mikepenz/fastadapter/adapters/HeaderAdapter;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterAdapter:Lcom/mikepenz/fastadapter/adapters/FooterAdapter;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2, v3}, Lcom/mikepenz/fastadapter/adapters/FooterAdapter;->wrap(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/AbstractAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->wrap(Lcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/AbstractAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/adapters/HeaderAdapter;->wrap(Lcom/mikepenz/fastadapter/IAdapter;)Lcom/mikepenz/fastadapter/AbstractAdapter;

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    return-object v0
.end method

.method protected getDrawerItem(I)Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;
    .locals 1

    .line 1802
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    return-object p1
.end method

.method protected getFooterAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 928
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterAdapter:Lcom/mikepenz/fastadapter/adapters/FooterAdapter;

    return-object v0
.end method

.method protected getHeaderAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderAdapter:Lcom/mikepenz/fastadapter/adapters/HeaderAdapter;

    return-object v0
.end method

.method protected getItemAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mikepenz/fastadapter/IItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mItemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    return-object v0
.end method

.method protected handleDrawerNavigation(Landroid/app/Activity;Z)V
    .locals 8

    .line 1364
    new-instance v0, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;

    invoke-direct {v0, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$1;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 1383
    iput-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 1387
    :cond_0
    iget-boolean p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggleEnabled:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p2, :cond_1

    .line 1388
    new-instance p2, Lcom/mikepenz/materialdrawer/DrawerBuilder$2;

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    sget v6, Lcom/mikepenz/materialdrawer/R$string;->material_drawer_open:I

    sget v7, Lcom/mikepenz/materialdrawer/R$string;->material_drawer_close:I

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/mikepenz/materialdrawer/DrawerBuilder$2;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 1418
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 1423
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_2

    .line 1424
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1428
    :cond_2
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz p1, :cond_3

    .line 1429
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V

    .line 1430
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object p2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    goto :goto_0

    .line 1432
    :cond_3
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance p2, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;

    invoke-direct {p2, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder$3;-><init>(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    :goto_0
    return-void
.end method

.method protected resetStickyFooterSelection()V
    .locals 3

    .line 1820
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1821
    :goto_0
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1822
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 1823
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 1

    const v0, 0x1020002

    .line 108
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    .line 109
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    .line 110
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public withDrawerLayout(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 320
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    goto :goto_0

    .line 326
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_2

    .line 327
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer_fits_not:I

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    goto :goto_0

    .line 329
    :cond_2
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mikepenz/materialdrawer/R$layout;->material_drawer:I

    iget-object v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout;

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    :goto_0
    return-object p0
.end method

.method public withHeader(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 565
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "please pass an activity first to use this call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    :cond_1
    return-object p0
.end method

.method public withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    return-object p0
.end method

.method public withSavedInstance(Landroid/os/Bundle;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 1220
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSavedInstance:Landroid/os/Bundle;

    return-object p0
.end method

.method public withSelectedItem(J)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 828
    iput-wide p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSelectedItemIdentifier:J

    return-object p0
.end method

.method public withToolbar(Landroid/support/v7/widget/Toolbar;)Lcom/mikepenz/materialdrawer/DrawerBuilder;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object p0
.end method
