.class public Lcom/beloo/widget/chipslayoutmanager/cache/ViewCacheFactory;
.super Ljava/lang/Object;
.source "ViewCacheFactory.java"


# instance fields
.field private layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/ViewCacheFactory;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public createCacheStorage()Lcom/beloo/widget/chipslayoutmanager/cache/IViewCacheStorage;
    .locals 2

    .line 14
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/cache/ViewCacheStorage;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/ViewCacheFactory;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/cache/ViewCacheStorage;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method
