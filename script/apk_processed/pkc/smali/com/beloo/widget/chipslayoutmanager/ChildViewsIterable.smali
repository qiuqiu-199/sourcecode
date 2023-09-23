.class public Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;
.super Ljava/lang/Object;
.source "ChildViewsIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method static synthetic access$000(Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;

    invoke-direct {v0, p0}, Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable$1;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChildViewsIterable;)V

    return-object v0
.end method
