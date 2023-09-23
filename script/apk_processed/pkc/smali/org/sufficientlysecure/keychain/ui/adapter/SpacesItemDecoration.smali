.class public Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private lastItemInFirstLane:I

.field private space:I

.field private spanCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    const/4 v0, 0x1

    .line 34
    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;-><init>(II)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;---><init>(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(II)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    .line 41
    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->lastItemInFirstLane:I

    .line 42
    iput v2, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->space:I

    .line 43
    iput v3, v1, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->spanCount:I

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;---><init>(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 49
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewPosition()I

    move-result p0

    .line 52
    instance-of p1, v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 53
    check-cast v4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 54
    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p1

    .line 55
    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v4

    goto :goto_0

    .line 58
    :cond_0
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->spanCount:I

    rem-int v4, p0, v4

    const/4 p1, 0x1

    :goto_0
    if-lt p1, v0, :cond_a

    if-gez v4, :cond_1

    goto :goto_4

    .line 63
    :cond_1
    iget v1, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->spanCount:I

    if-ne p1, v1, :cond_2

    .line 64
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->space:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 65
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->space:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 68
    iget v1, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->space:I

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 71
    :cond_3
    iget v1, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->spanCount:I

    sub-int/2addr v1, v0

    if-ne v4, v1, :cond_4

    .line 72
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->space:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 74
    :cond_4
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_5

    .line 75
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->space:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 77
    :cond_5
    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-nez v4, :cond_6

    .line 78
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->space:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 82
    :cond_6
    :goto_1
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->spanCount:I

    if-ge p0, v4, :cond_9

    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->spanCount:I

    if-gt p1, v4, :cond_9

    .line 83
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->lastItemInFirstLane:I

    if-gez v4, :cond_8

    add-int/2addr p1, p0

    .line 84
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->spanCount:I

    if-ne p1, v4, :cond_7

    goto :goto_2

    :cond_7
    iget p0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->lastItemInFirstLane:I

    :goto_2
    iput p0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->lastItemInFirstLane:I

    .line 85
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->space:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 86
    :cond_8
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->lastItemInFirstLane:I

    if-gt p0, v4, :cond_9

    .line 87
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->space:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 90
    :cond_9
    :goto_3
    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;->space:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_a
    :goto_4
    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;--->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
