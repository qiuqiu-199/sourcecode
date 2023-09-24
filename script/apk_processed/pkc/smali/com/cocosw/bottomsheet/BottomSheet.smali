.class public Lcom/cocosw/bottomsheet/BottomSheet;
.super Landroid/app/Dialog;
.source "BottomSheet.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    }
.end annotation


# instance fields
.field private actions:Lcom/cocosw/bottomsheet/ActionMenu;

.field private adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

.field private builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

.field private cancelOnSwipeDown:Z

.field private cancelOnTouchOutside:Z

.field private close:Landroid/graphics/drawable/Drawable;

.field private collapseListIcons:Z

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private fullMenuItem:Lcom/cocosw/bottomsheet/ActionMenu;

.field private helper:Lcom/cocosw/bottomsheet/TranslucentHelper;

.field private final hidden:Landroid/util/SparseIntArray;

.field private icon:Landroid/widget/ImageView;

.field private limit:I

.field private list:Landroid/widget/GridView;

.field private mGridItemLayoutId:I

.field private mHeaderLayoutId:I

.field private mListItemLayoutId:I

.field private menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

.field private more:Landroid/graphics/drawable/Drawable;

.field private moreText:Ljava/lang/String;

.field private showListener:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 67
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->hidden:Landroid/util/SparseIntArray;

    const/4 p2, -0x1

    .line 83
    iput p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    const/4 p2, 0x1

    .line 84
    iput-boolean p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnTouchOutside:Z

    .line 85
    iput-boolean p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnSwipeDown:Z

    .line 100
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet:[I

    sget v2, Lcom/cocosw/bottomsheet/R$attr;->bs_bottomSheetStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 101
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    :try_start_0
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_moreDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->more:Landroid/graphics/drawable/Drawable;

    .line 104
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_closeDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->close:Landroid/graphics/drawable/Drawable;

    .line 105
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_moreText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->moreText:Ljava/lang/String;

    .line 106
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_collapseListIcons:I

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->collapseListIcons:Z

    .line 107
    sget p2, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_headerLayout:I

    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_header:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mHeaderLayoutId:I

    .line 108
    sget p2, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_listItemLayout:I

    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_list_entry:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mListItemLayoutId:I

    .line 109
    sget p2, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_gridItemLayout:I

    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_grid_entry:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mGridItemLayoutId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_0

    .line 116
    new-instance p2, Lcom/cocosw/bottomsheet/TranslucentHelper;

    invoke-direct {p2, p0, p1}, Lcom/cocosw/bottomsheet/TranslucentHelper;-><init>(Landroid/app/Dialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->helper:Lcom/cocosw/bottomsheet/TranslucentHelper;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method static synthetic access$000(Lcom/cocosw/bottomsheet/BottomSheet;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->showFullItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->showListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/ActionMenu;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/util/SparseIntArray;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->hidden:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/cocosw/bottomsheet/BottomSheet;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mGridItemLayoutId:I

    return p0
.end method

.method static synthetic access$1400(Lcom/cocosw/bottomsheet/BottomSheet;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mListItemLayoutId:I

    return p0
.end method

.method static synthetic access$1700(Lcom/cocosw/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->collapseListIcons:Z

    return p0
.end method

.method static synthetic access$200(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/cocosw/bottomsheet/BottomSheet;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->showShortItems()V

    return-void
.end method

.method static synthetic access$2200(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/cocosw/bottomsheet/BottomSheet;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    return p0
.end method

.method static synthetic access$300(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/widget/GridView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    return-object p0
.end method

.method static synthetic access$402(Lcom/cocosw/bottomsheet/BottomSheet;Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/widget/ImageView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getNumColumns()I
    .locals 3

    const/4 v0, 0x1

    .line 125
    :try_start_0
    const-class v1, Landroid/widget/GridView;

    const-string v2, "mRequestedNumColumns"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 127
    iget-object v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0
.end method

.method private hasDivider()Z
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    iget-object v0, v0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10

    .line 154
    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnTouchOutside:Z

    invoke-virtual {p0, v0}, Lcom/cocosw/bottomsheet/BottomSheet;->setCanceledOnTouchOutside(Z)V

    .line 155
    sget v0, Lcom/cocosw/bottomsheet/R$layout;->bottom_sheet_dialog:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    .line 156
    sget v2, Lcom/cocosw/bottomsheet/R$id;->bs_main:I

    invoke-virtual {v0, v2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 157
    iget v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->mHeaderLayoutId:I

    invoke-static {p1, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/cocosw/bottomsheet/BottomSheet;->setContentView(Landroid/view/View;)V

    .line 159
    iget-boolean v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnSwipeDown:Z

    if-nez v1, :cond_0

    .line 160
    iget-boolean v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnSwipeDown:Z

    iput-boolean v1, v0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->swipeable:Z

    .line 161
    :cond_0
    new-instance v1, Lcom/cocosw/bottomsheet/BottomSheet$1;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/BottomSheet$1;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->setSlideListener(Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;)V

    .line 173
    new-instance v1, Lcom/cocosw/bottomsheet/BottomSheet$2;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/BottomSheet$2;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    invoke-super {p0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v1, 0x2

    .line 188
    new-array v1, v1, [I

    .line 189
    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getLocationOnScreen([I)V

    .line 191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_3

    .line 192
    aget v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->helper:Lcom/cocosw/bottomsheet/TranslucentHelper;

    iget v1, v1, Lcom/cocosw/bottomsheet/TranslucentHelper;->mStatusBarHeight:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->setPadding(IIII)V

    .line 193
    invoke-virtual {v0, v3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->helper:Lcom/cocosw/bottomsheet/TranslucentHelper;

    iget-boolean v2, v2, Lcom/cocosw/bottomsheet/TranslucentHelper;->mNavBarAvailable:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->helper:Lcom/cocosw/bottomsheet/TranslucentHelper;

    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cocosw/bottomsheet/TranslucentHelper;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 196
    :cond_3
    sget v1, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_title:I

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 197
    iget-object v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v2}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$700(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 198
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v2, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v2}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$700(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_4
    sget v1, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_title_image:I

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    .line 203
    sget v1, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_gridview:I

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    .line 204
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    iput-object v1, v0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->mTarget:Landroid/view/View;

    .line 205
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$800(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 206
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 209
    :cond_5
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$800(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 210
    :goto_2
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 211
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_6

    .line 212
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must set icon for each items in grid style"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 216
    :cond_7
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$900(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)I

    move-result v1

    if-lez v1, :cond_8

    .line 217
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$900(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)I

    move-result v1

    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getNumColumns()I

    move-result v4

    mul-int v1, v1, v4

    iput v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    goto :goto_3

    :cond_8
    const v1, 0x7fffffff

    .line 219
    iput v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    .line 221
    :goto_3
    invoke-virtual {v0, v3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->setCollapsible(Z)V

    .line 223
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/ActionMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 224
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 226
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    iget v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    if-le v1, v3, :cond_9

    .line 227
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/ActionMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->fullMenuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 228
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/ActionMenu;

    move-result-object v1

    iget v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/cocosw/bottomsheet/ActionMenu;->clone(I)Lcom/cocosw/bottomsheet/ActionMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 229
    new-instance v1, Lcom/cocosw/bottomsheet/ActionMenuItem;

    const/4 v5, 0x0

    sget v6, Lcom/cocosw/bottomsheet/R$id;->bs_more:I

    const/4 v7, 0x0

    iget v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->limit:I

    add-int/lit8 v8, v3, -0x1

    iget-object v9, p0, Lcom/cocosw/bottomsheet/BottomSheet;->moreText:Ljava/lang/String;

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/cocosw/bottomsheet/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 230
    iget-object v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->more:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/cocosw/bottomsheet/ActionMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 231
    iget-object v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v3, v1}, Lcom/cocosw/bottomsheet/ActionMenu;->add(Lcom/cocosw/bottomsheet/ActionMenuItem;)Landroid/view/MenuItem;

    .line 232
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 233
    invoke-virtual {v0, v2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->setCollapsible(Z)V

    .line 236
    :cond_9
    new-instance v5, Lcom/cocosw/bottomsheet/BottomSheet$3;

    invoke-direct {v5, p0}, Lcom/cocosw/bottomsheet/BottomSheet$3;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    .line 313
    new-instance v1, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    sget v6, Lcom/cocosw/bottomsheet/R$layout;->bs_list_divider:I

    sget v7, Lcom/cocosw/bottomsheet/R$id;->headerlayout:I

    sget v8, Lcom/cocosw/bottomsheet/R$id;->header:I

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;III)V

    iput-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    .line 314
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-virtual {p1, v1}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->setGridView(Landroid/widget/GridView;)V

    .line 317
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    new-instance v1, Lcom/cocosw/bottomsheet/BottomSheet$4;

    invoke-direct {v1, p0, v0}, Lcom/cocosw/bottomsheet/BottomSheet$4;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 336
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$2000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 337
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$2000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cocosw/bottomsheet/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 339
    :cond_a
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->setListLayout()V

    return-void
.end method

.method private setListLayout()V
    .locals 2

    .line 412
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->hasDivider()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/cocosw/bottomsheet/BottomSheet$6;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/BottomSheet$6;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private showFullItems()V
    .locals 3

    .line 366
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 367
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0x12c

    .line 368
    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 369
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->fullMenuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 372
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->updateSection()V

    .line 373
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->notifyDataSetChanged()V

    .line 374
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->list:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->close:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/cocosw/bottomsheet/BottomSheet$5;

    invoke-direct {v1, p0}, Lcom/cocosw/bottomsheet/BottomSheet$5;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->setListLayout()V

    return-void
.end method

.method private showShortItems()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->menuItem:Lcom/cocosw/bottomsheet/ActionMenu;

    iput-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    .line 388
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->updateSection()V

    .line 389
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->notifyDataSetChanged()V

    .line 390
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->setListLayout()V

    .line 392
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$500(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$500(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateSection()V
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/ActionMenu;->removeInvisible()V

    .line 346
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$800(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/ActionMenu;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/ActionMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    :goto_0
    iget-object v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/ActionMenu;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 350
    iget-object v3, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v3, v1}, Lcom/cocosw/bottomsheet/ActionMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->actions:Lcom/cocosw/bottomsheet/ActionMenu;

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/ActionMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 352
    new-instance v3, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 356
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;

    .line 357
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    invoke-virtual {v1, v0}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->setSections([Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter$Section;)V

    goto :goto_1

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->adapter:Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    iget-object v0, v0, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->mSections:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet;->builder:Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1000(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Lcom/cocosw/bottomsheet/ActionMenu;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 433
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 434
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/BottomSheet;->init(Landroid/content/Context;)V

    .line 436
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 437
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 438
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 440
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100f4

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, -0x1

    .line 442
    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 446
    new-instance v0, Lcom/cocosw/bottomsheet/BottomSheet$7;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/BottomSheet$7;-><init>(Lcom/cocosw/bottomsheet/BottomSheet;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 455
    invoke-virtual {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    .line 444
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method protected onStart()V
    .locals 0

    .line 402
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 403
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/BottomSheet;->showShortItems()V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 136
    iput-boolean p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->cancelOnTouchOutside:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet;->showListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method
