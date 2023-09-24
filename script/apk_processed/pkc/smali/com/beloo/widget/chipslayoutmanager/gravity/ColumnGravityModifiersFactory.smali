.class public Lcom/beloo/widget/chipslayoutmanager/gravity/ColumnGravityModifiersFactory;
.super Ljava/lang/Object;
.source "ColumnGravityModifiersFactory.java"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifiersFactory;


# instance fields
.field private gravityModifierMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/ColumnGravityModifiersFactory;->gravityModifierMap:Landroid/util/SparseArray;

    .line 15
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/gravity/CenterInColumnGravityModifier;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/gravity/CenterInColumnGravityModifier;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/ColumnGravityModifiersFactory;->gravityModifierMap:Landroid/util/SparseArray;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/ColumnGravityModifiersFactory;->gravityModifierMap:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/ColumnGravityModifiersFactory;->gravityModifierMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/gravity/LeftGravityModifier;

    invoke-direct {v1}, Lcom/beloo/widget/chipslayoutmanager/gravity/LeftGravityModifier;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/ColumnGravityModifiersFactory;->gravityModifierMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/gravity/RightGravityModifier;

    invoke-direct {v1}, Lcom/beloo/widget/chipslayoutmanager/gravity/RightGravityModifier;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getGravityModifier(I)Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifier;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/ColumnGravityModifiersFactory;->gravityModifierMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifier;

    if-nez p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/gravity/ColumnGravityModifiersFactory;->gravityModifierMap:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beloo/widget/chipslayoutmanager/gravity/IGravityModifier;

    :cond_0
    return-object p1
.end method
