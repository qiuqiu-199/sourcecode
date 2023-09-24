.class public Lcom/beloo/widget/chipslayoutmanager/layouter/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field private viewPosition:I

.field private viewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;->viewRect:Landroid/graphics/Rect;

    .line 11
    iput p2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;->viewPosition:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    check-cast p1, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;

    .line 29
    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;->viewPosition:I

    iget p1, p1, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;->viewPosition:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getViewRect()Landroid/graphics/Rect;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;->viewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/layouter/Item;->viewPosition:I

    return v0
.end method
