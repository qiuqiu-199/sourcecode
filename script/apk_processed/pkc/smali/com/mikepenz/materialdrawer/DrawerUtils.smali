.class Lcom/mikepenz/materialdrawer/DrawerUtils;
.super Ljava/lang/Object;
.source "DrawerUtils.java"


# direct methods
.method private static addStickyFooterDivider(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    .line 379
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 380
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 381
    invoke-static {v2, p0}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/4 v2, 0x1

    .line 382
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 383
    sget v2, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_divider:I

    sget v3, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_divider:I

    invoke-static {p0, v2, v3}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 384
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static buildStickyDrawerItemFooter(Landroid/content/Context;Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/view/View$OnClickListener;)Landroid/view/ViewGroup;
    .locals 4

    .line 356
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 357
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 358
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 360
    sget v1, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_background:I

    sget v2, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_background:I

    invoke-static {p0, v1, v2}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 363
    iget-boolean v1, p1, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterDivider:Z

    if-eqz v1, :cond_0

    .line 364
    invoke-static {p0, v0}, Lcom/mikepenz/materialdrawer/DrawerUtils;->addStickyFooterDivider(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 367
    :cond_0
    invoke-static {p1, v0, p2}, Lcom/mikepenz/materialdrawer/DrawerUtils;->fillStickyDrawerItemFooter(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static fillStickyDrawerItemFooter(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 396
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 397
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->generateView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 398
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 400
    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 408
    invoke-static {v1}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->setDrawerVerticalPadding(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 411
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public static getPositionByIdentifier(Lcom/mikepenz/materialdrawer/DrawerBuilder;J)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const/4 v0, 0x0

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-interface {v1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static handleFooterView(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/view/View$OnClickListener;)V
    .locals 8

    .line 295
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    invoke-virtual {v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyDrawerItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 299
    invoke-static {v0, p0, p1}, Lcom/mikepenz/materialdrawer/DrawerUtils;->buildStickyDrawerItemFooter(Landroid/content/Context;Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/view/View$OnClickListener;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 305
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {p1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 306
    invoke-virtual {p1, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 307
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    sget v5, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_sticky_footer:I

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setId(I)V

    .line 308
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5, p1}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mTranslucentNavigationBar:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFullscreen:Z

    if-eqz p1, :cond_2

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt p1, v3, :cond_2

    .line 311
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/mikepenz/materialize/util/UIUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p1, v2, v2, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 315
    :cond_2
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 316
    sget v3, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_sticky_footer:I

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 317
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadow:Z

    if-eqz p1, :cond_3

    .line 321
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadowView:Landroid/view/View;

    .line 322
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadowView:Landroid/view/View;

    sget v3, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_top:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 323
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_sticky_footer_elevation:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p1, v3, v4, v6}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->addView(Landroid/view/View;II)V

    .line 325
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadowView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 326
    sget v3, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_sticky_footer:I

    invoke-virtual {p1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 327
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterShadowView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    :cond_3
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_padding:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 335
    :cond_4
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterView:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 336
    iget-object p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_5

    .line 337
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "can\'t use a footerView without a recyclerView"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 340
    :cond_5
    iget-boolean p1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterDivider:Z

    if-eqz p1, :cond_6

    .line 341
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getFooterAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object p1

    new-array v0, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    new-instance v1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    invoke-direct {v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;-><init>()V

    iget-object p0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, p0}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withView(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p0

    sget-object v1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->BOTTOM:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    invoke-virtual {p0, v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withViewPosition(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-interface {p1, v0}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;

    goto :goto_0

    .line 343
    :cond_6
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getFooterAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object p1

    new-array v0, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    new-instance v1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    invoke-direct {v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;-><init>()V

    iget-object p0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, p0}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withView(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p0

    sget-object v1, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->NONE:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    invoke-virtual {p0, v1}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withViewPosition(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-interface {p1, v0}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;

    :cond_7
    :goto_0
    return-void
.end method

.method public static handleHeaderView(Lcom/mikepenz/materialdrawer/DrawerBuilder;)V
    .locals 8

    .line 188
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    if-eqz v0, :cond_1

    .line 189
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeaderSticky:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/AccountHeader;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderView:Landroid/view/View;

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/AccountHeader;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mDividerBelowHeader:Z

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderDivider:Z

    .line 194
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    iget-object v0, v0, Lcom/mikepenz/materialdrawer/AccountHeader;->mAccountHeaderBuilder:Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    iget-boolean v0, v0, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->mPaddingBelowHeader:Z

    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderPadding:Z

    .line 199
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 201
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 202
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 203
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderView:Landroid/view/View;

    sget v5, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_sticky_header:I

    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    .line 204
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v5, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderView:Landroid/view/View;

    invoke-virtual {v3, v5, v2, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 208
    sget v3, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_sticky_header:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 209
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderView:Landroid/view/View;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/mikepenz/materialdrawer/R$attr;->material_drawer_background:I

    sget v7, Lcom/mikepenz/materialdrawer/R$color;->material_drawer_background:I

    invoke-static {v3, v6, v7}, Lcom/mikepenz/materialize/util/UIUtils;->getThemeColorFromAttrOrRes(Landroid/content/Context;II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 214
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderShadow:Z

    if-eqz v0, :cond_3

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/high16 v6, 0x40800000    # 4.0f

    if-lt v0, v3, :cond_2

    .line 217
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyHeaderView:Landroid/view/View;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v3}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    goto :goto_1

    .line 219
    :cond_2
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 220
    sget v3, Lcom/mikepenz/materialdrawer/R$drawable;->material_drawer_shadow_bottom:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 221
    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mSliderLayout:Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;

    iget-object v7, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v7}, Lcom/mikepenz/materialize/util/UIUtils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v0, v4, v6}, Lcom/mikepenz/materialize/view/ScrimInsetsRelativeLayout;->addView(Landroid/view/View;II)V

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    sget v4, Lcom/mikepenz/materialdrawer/R$id;->material_drawer_sticky_header:I

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 235
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 236
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "can\'t use a headerView without a recyclerView"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 239
    :cond_5
    iget-boolean v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderPadding:Z

    if-eqz v0, :cond_6

    .line 240
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getHeaderAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    new-array v1, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    new-instance v3, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    invoke-direct {v3}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;-><init>()V

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withView(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object v3

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeiderHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withHeight(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderDivider:Z

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withDivider(Z)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object v3

    sget-object v4, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->TOP:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withViewPosition(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;

    goto :goto_2

    .line 242
    :cond_6
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getHeaderAdapter()Lcom/mikepenz/fastadapter/IItemAdapter;

    move-result-object v0

    new-array v1, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    new-instance v3, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    invoke-direct {v3}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;-><init>()V

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withView(Landroid/view/View;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object v3

    iget-object v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeiderHeight:Lcom/mikepenz/materialdrawer/holder/DimenHolder;

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withHeight(Lcom/mikepenz/materialdrawer/holder/DimenHolder;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mHeaderDivider:Z

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withDivider(Z)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object v3

    sget-object v4, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;->NONE:Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;

    invoke-virtual {v3, v4}, Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;->withViewPosition(Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem$Position;)Lcom/mikepenz/materialdrawer/model/ContainerDrawerItem;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/mikepenz/fastadapter/IItemAdapter;->add([Lcom/mikepenz/fastadapter/IItem;)Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 245
    :goto_2
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    :cond_7
    return-void
.end method

.method public static onFooterDrawerItemClick(Lcom/mikepenz/materialdrawer/DrawerBuilder;Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 34
    instance-of v2, p1, Lcom/mikepenz/materialdrawer/model/interfaces/Selectable;

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 36
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->resetStickyFooterSelection()V

    .line 38
    invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 39
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->getAdapter()Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    .line 45
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 46
    iget-object v1, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 47
    :goto_2
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p2, :cond_2

    .line 49
    iput v2, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mCurrentStickyFooterSelection:I

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz p3, :cond_6

    .line 60
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 61
    instance-of p3, p1, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    const/4 v1, -0x1

    if-eqz p3, :cond_4

    move-object p3, p1

    check-cast p3, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;

    invoke-virtual {p3}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {p3}, Lcom/mikepenz/materialdrawer/model/AbstractDrawerItem;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0, v1, p1}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    move-result p3

    move v0, p3

    .line 65
    :cond_4
    iget-object p3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    if-eqz p3, :cond_5

    .line 66
    iget-object p3, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mOnDrawerItemClickListener:Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    invoke-interface {p3, p2, v1, p1}, Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;->onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z

    move-result v0

    :cond_5
    if-nez v0, :cond_6

    .line 72
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->closeDrawerDelayed()V

    :cond_6
    return-void
.end method

.method public static processDrawerLayoutParams(Lcom/mikepenz/materialdrawer/DrawerBuilder;Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .locals 3

    if-eqz p1, :cond_4

    .line 423
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerGravity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x800005

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 424
    iput v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    .line 425
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 426
    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->setMarginEnd(I)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 431
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$dimen;->material_drawer_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->setMarginEnd(I)V

    .line 435
    :cond_2
    iget v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerWidth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    .line 436
    iget p0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mDrawerWidth:I

    iput p0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    goto :goto_0

    .line 438
    :cond_3
    iget-object p0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;->getOptimalDrawerWidth(Landroid/content/Context;)I

    move-result p0

    iput p0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    :cond_4
    :goto_0
    return-object p1
.end method

.method public static setStickyFooterSelection(Lcom/mikepenz/materialdrawer/DrawerBuilder;ILjava/lang/Boolean;)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/DrawerBuilder;->mStickyFooterView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 89
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-le v1, p1, :cond_0

    if-ltz p1, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, v1, p1, p2}, Lcom/mikepenz/materialdrawer/DrawerUtils;->onFooterDrawerItemClick(Lcom/mikepenz/materialdrawer/DrawerBuilder;Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
