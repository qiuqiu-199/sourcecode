.class public Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;
.super Ljava/lang/Object;
.source "FlexibleLayoutManager.java"

# interfaces
.implements Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;


# instance fields
.field protected mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 43
    iput-object p1, p0, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method private getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 196
    iget-object v0, p0, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public findFirstCompletelyVisibleItemPosition()I
    .locals 5

    .line 103
    invoke-direct {p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 104
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 105
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    .line 107
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getSpanCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 108
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    move-result-object v4

    aget v4, v4, v3

    if-ge v4, v2, :cond_0

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 113
    :cond_2
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 5

    .line 128
    invoke-direct {p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 129
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 130
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    .line 132
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getSpanCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 133
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v4

    aget v4, v4, v3

    if-ge v4, v2, :cond_0

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 138
    :cond_2
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 5

    .line 153
    invoke-direct {p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 154
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 155
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    .line 157
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getSpanCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 158
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object v4

    aget v4, v4, v3

    if-le v4, v2, :cond_0

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 163
    :cond_2
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 5

    .line 178
    invoke-direct {p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 179
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_2

    .line 180
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x1

    .line 182
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getSpanCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 183
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v4

    aget v4, v4, v3

    if-le v4, v2, :cond_0

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 188
    :cond_2
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 2

    .line 65
    invoke-direct {p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 66
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    return v0

    .line 68
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 69
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getSpanCount()I
    .locals 2

    .line 83
    invoke-direct {p0}, Leu/davidea/flexibleadapter/common/FlexibleLayoutManager;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 84
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0

    .line 86
    :cond_0
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
