.class public Lorg/sufficientlysecure/materialchips/views/DropdownListView;
.super Landroid/widget/RelativeLayout;
.source "DropdownListView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->rootView:Landroid/view/ViewGroup;

    .line 29
    invoke-direct {p0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/materialchips/views/DropdownListView;)Landroid/view/ViewGroup;
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->rootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private init()V
    .locals 5

    .line 33
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/sufficientlysecure/materialchips/R$layout;->list_filterable_view:I

    invoke-static {v0, v1, p0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    sget v1, Lorg/sufficientlysecure/materialchips/R$id;->recycler_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 36
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/16 v0, 0x8

    .line 38
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public build(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 44
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;

    invoke-direct {v0, p0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;-><init>(Lorg/sufficientlysecure/materialchips/views/DropdownListView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public fadeIn()V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 89
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->setVisibility(I)V

    return-void
.end method

.method public fadeOut()V
    .locals 4

    .line 94
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    .line 99
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 100
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    invoke-virtual {p0, v1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->setVisibility(I)V

    return-void
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method
