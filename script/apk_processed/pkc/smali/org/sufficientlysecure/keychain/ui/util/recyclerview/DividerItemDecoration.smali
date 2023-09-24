.class public Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL_LIST:I = 0x0

.field public static final VERTICAL_LIST:I = 0x1


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private final showAfterLast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    .line 30
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->ATTRS:[I

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 43
    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 44
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->showAfterLast:Z

    .line 45
    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->ATTRS:[I

    invoke-virtual {v1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 p0, 0x0

    .line 46
    invoke-virtual {v1, p0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->setOrientation(I)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;---><init>(Landroid/content/Context;IZ)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    .line 87
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 88
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 90
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_0

    .line 92
    invoke-virtual {v9, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 96
    iget-object v5, v7, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 97
    iget-object v6, v7, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    iget-object v4, v7, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;--->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    .line 68
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 69
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 71
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 72
    iget-boolean v3, v7, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->showAfterLast:Z

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 76
    invoke-virtual {v9, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 80
    iget-object v5, v7, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 81
    iget-object v6, v7, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object v4, v7, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;--->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 105
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    if-nez v2, :cond_0

    .line 106
    invoke-virtual {v1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 110
    :cond_0
    iget v2, v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mOrientation:I

    const/4 p1, 0x1

    if-ne v2, p1, :cond_1

    .line 111
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, p0, p0, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, p0, p0, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;--->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 60
    iget p0, v1, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 61
    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;--->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setOrientation(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    if-eq v2, v0, :cond_0

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid orientation"

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_0
    iput v2, v1, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;->mOrientation:I

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/DividerItemDecoration;--->setOrientation(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
