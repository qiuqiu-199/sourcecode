.class Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;
.super Ljava/lang/Object;
.source "ChildViewsIterable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;->this$0:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 23
    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;->i:I

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;->this$0:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    invoke-static {v1}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;->access$000(Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Landroid/view/View;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;->this$0:Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;->access$000(Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;->next()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
