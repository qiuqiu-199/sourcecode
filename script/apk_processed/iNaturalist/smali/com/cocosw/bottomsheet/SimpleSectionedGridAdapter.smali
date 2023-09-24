.class Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleSectionedGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$ViewHolder;,
        Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;
    }
.end annotation


# static fields
.field protected static final TYPE_FILLER:I = 0x0

.field protected static final TYPE_HEADER:I = 0x1

.field protected static final TYPE_HEADER_FILLER:I = 0x2


# instance fields
.field private mBaseAdapter:Landroid/widget/ListAdapter;

.field private mColumnWidth:I

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mHeaderLayoutResId:I

.field private mHeaderTextViewResId:I

.field private mHeaderWidth:I

.field private mHorizontalSpacing:I

.field private mInitialSections:[Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

.field private mLastViewSeen:Landroid/view/View;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNumColumns:I

.field private mSectionResourceId:I

.field mSections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;",
            ">;"
        }
    .end annotation
.end field

.field private mStrechMode:I

.field private mValid:Z

.field private mWidth:I

.field private requestedColumnWidth:I

.field private requestedHorizontalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;III)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mValid:Z

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mInitialSections:[Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    const-string v0, "layout_inflater"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 63
    iput p3, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSectionResourceId:I

    .line 64
    iput p4, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderLayoutResId:I

    .line 65
    iput p5, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderTextViewResId:I

    .line 66
    iput-object p2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    .line 67
    iput-object p1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mContext:Landroid/content/Context;

    .line 68
    iget-object p1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    new-instance p2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$1;

    invoke-direct {p2, p0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$1;-><init>(Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;)V

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method static synthetic access$002(Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mValid:Z

    return p1
.end method

.method static synthetic access$100(Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method private getFillerView(Landroid/view/View;)Lcom/cocosw/bottomsheet/FillerView;
    .locals 2

    .line 322
    new-instance v0, Lcom/cocosw/bottomsheet/FillerView;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cocosw/bottomsheet/FillerView;-><init>(Landroid/content/Context;)V

    .line 323
    invoke-virtual {v0, p1}, Lcom/cocosw/bottomsheet/FillerView;->setMeasureTarget(Landroid/view/View;)V

    return-object v0
.end method

.method private getHeaderSize()I
    .locals 4

    .line 96
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderWidth:I

    if-lez v0, :cond_0

    .line 97
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderWidth:I

    return v0

    .line 99
    :cond_0
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mWidth:I

    iget-object v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getStretchMode()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mStrechMode:I

    .line 101
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    check-cast v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getAvailableWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mWidth:I

    .line 102
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    check-cast v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    .line 103
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    check-cast v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getColumnWidth()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedColumnWidth:I

    .line 104
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    check-cast v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getHorizontalSpacing()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedHorizontalSpacing:I

    .line 107
    :cond_1
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mWidth:I

    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    iget v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedColumnWidth:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedHorizontalSpacing:I

    mul-int v1, v1, v3

    sub-int/2addr v0, v1

    .line 109
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mStrechMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedColumnWidth:I

    iput v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mColumnWidth:I

    .line 133
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedHorizontalSpacing:I

    iput v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHorizontalSpacing:I

    .line 134
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mWidth:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHorizontalSpacing:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mWidth:I

    goto :goto_0

    .line 117
    :pswitch_1
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedColumnWidth:I

    iget v3, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    div-int/2addr v0, v3

    add-int/2addr v1, v0

    iput v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mColumnWidth:I

    .line 118
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedHorizontalSpacing:I

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHorizontalSpacing:I

    goto :goto_0

    .line 122
    :pswitch_2
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedColumnWidth:I

    iput v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mColumnWidth:I

    .line 123
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    if-le v1, v2, :cond_2

    .line 124
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedHorizontalSpacing:I

    iget v3, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    sub-int/2addr v3, v2

    div-int/2addr v0, v3

    add-int/2addr v1, v0

    iput v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHorizontalSpacing:I

    goto :goto_0

    .line 127
    :cond_2
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedHorizontalSpacing:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHorizontalSpacing:I

    goto :goto_0

    .line 111
    :pswitch_3
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mWidth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mWidth:I

    .line 112
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedColumnWidth:I

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mColumnWidth:I

    .line 113
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedHorizontalSpacing:I

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHorizontalSpacing:I

    .line 137
    :goto_0
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mWidth:I

    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mColumnWidth:I

    iget v3, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHorizontalSpacing:I

    add-int/2addr v2, v3

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderWidth:I

    .line 138
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderWidth:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 230
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHeaderLayoutResId()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderLayoutResId:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 235
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    .line 236
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    .line 237
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 242
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    iget-object v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    .line 243
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    .line 244
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 249
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->getViewTypeCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    .line 251
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 284
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 288
    iget-object p2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSectionResourceId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 290
    :cond_0
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderLayoutResId:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 291
    iget-object p2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSectionResourceId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 294
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iget p3, p3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->type:I

    packed-switch p3, :pswitch_data_0

    .line 312
    iget-object p1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mLastViewSeen:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->getFillerView(Landroid/view/View;)Lcom/cocosw/bottomsheet/FillerView;

    move-result-object p2

    goto :goto_1

    .line 304
    :pswitch_0
    iget p3, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderLayoutResId:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/cocosw/bottomsheet/HeaderLayout;

    .line 305
    iget-object v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iget-object v1, v1, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    iget v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderTextViewResId:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 307
    iget-object v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iget-object p1, p1, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_2
    invoke-virtual {p3, v0}, Lcom/cocosw/bottomsheet/HeaderLayout;->setHeaderWidth(I)V

    goto :goto_1

    .line 296
    :pswitch_1
    iget p3, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderLayoutResId:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/cocosw/bottomsheet/HeaderLayout;

    .line 297
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iget-object v0, v0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 298
    iget v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mHeaderTextViewResId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    iget-object v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iget-object p1, p1, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_3
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->getHeaderSize()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/cocosw/bottomsheet/HeaderLayout;->setHeaderWidth(I)V

    goto :goto_1

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 316
    iput-object p2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mLastViewSeen:Landroid/view/View;

    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 257
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mBaseAdapter:Landroid/widget/ListAdapter;

    .line 259
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->sectionedPositionToPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isSectionHeaderPosition(I)Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public positionToSectionedPosition(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 200
    :goto_0
    iget-object v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iget v2, v2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->firstPosition:I

    if-le v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/2addr p1, v1

    return p1
.end method

.method public sectionedPositionToPosition(I)I
    .locals 3

    .line 210
    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->isSectionHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iget v2, v2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->sectionedPosition:I

    if-le v2, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/2addr p1, v1

    return p1
.end method

.method public setGridView(Landroid/widget/GridView;)V
    .locals 3

    .line 84
    instance-of v0, p1, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    if-eqz v0, :cond_0

    .line 87
    iput-object p1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    .line 88
    invoke-virtual {p1}, Landroid/widget/GridView;->getStretchMode()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mStrechMode:I

    .line 89
    invoke-virtual {p1}, Landroid/widget/GridView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mWidth:I

    .line 90
    check-cast p1, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    .line 91
    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getColumnWidth()I

    move-result v0

    iput v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedColumnWidth:I

    .line 92
    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getHorizontalSpacing()I

    move-result p1

    iput p1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->requestedHorizontalSpacing:I

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Does your grid view extends PinnedSectionGridView?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSections()V
    .locals 10

    .line 148
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 150
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->getHeaderSize()I

    .line 151
    iget-object v0, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mInitialSections:[Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    new-instance v1, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$2;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$2;-><init>(Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 161
    :goto_0
    iget-object v3, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mInitialSections:[Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mInitialSections:[Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    aget-object v3, v3, v1

    move v4, v2

    const/4 v2, 0x0

    .line 165
    :goto_1
    iget v5, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_0

    .line 166
    new-instance v5, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iget v6, v3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->firstPosition:I

    iget-object v7, v3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->title:Ljava/lang/CharSequence;

    invoke-direct {v5, v6, v7}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    const/4 v6, 0x2

    .line 167
    iput v6, v5, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->type:I

    .line 168
    iget v6, v5, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->firstPosition:I

    add-int/2addr v6, v4

    iput v6, v5, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->sectionedPosition:I

    .line 169
    iget-object v6, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    iget v7, v5, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->sectionedPosition:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    :cond_0
    new-instance v2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iget v5, v3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->firstPosition:I

    iget-object v7, v3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->title:Ljava/lang/CharSequence;

    invoke-direct {v2, v5, v7}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    .line 174
    iput v6, v2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->type:I

    .line 175
    iget v5, v2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->firstPosition:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->sectionedPosition:I

    .line 176
    iget-object v5, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    iget v7, v2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->sectionedPosition:I

    invoke-virtual {v5, v7, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    .line 179
    iget-object v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mInitialSections:[Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    array-length v2, v2

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mInitialSections:[Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    add-int/lit8 v5, v1, 0x1

    aget-object v2, v2, v5

    iget v2, v2, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->firstPosition:I

    .line 181
    iget v5, v3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->firstPosition:I

    sub-int v5, v2, v5

    .line 182
    iget v6, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    iget v7, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    rem-int/2addr v5, v7

    sub-int/2addr v6, v5

    .line 183
    iget v5, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mNumColumns:I

    if-eq v5, v6, :cond_2

    move v5, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_1

    .line 185
    new-instance v7, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    iget v8, v3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->firstPosition:I

    iget-object v9, v3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->title:Ljava/lang/CharSequence;

    invoke-direct {v7, v8, v9}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    .line 186
    iput v0, v7, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->type:I

    add-int v8, v2, v5

    .line 187
    iput v8, v7, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->sectionedPosition:I

    .line 188
    iget-object v8, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    iget v9, v7, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;->sectionedPosition:I

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move v2, v5

    goto :goto_3

    :cond_2
    move v2, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 195
    :cond_3
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public varargs setSections([Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mInitialSections:[Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    .line 144
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->setSections()V

    return-void
.end method
