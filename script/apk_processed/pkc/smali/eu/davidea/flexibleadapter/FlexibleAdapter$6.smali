.class Leu/davidea/flexibleadapter/FlexibleAdapter$6;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeaders(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 0

    .line 1506
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1510
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$300(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Double call detected! Headers already shown OR the method showAllHeaders() was already called!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1514
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$400(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V

    .line 1519
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 1520
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 1521
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1522
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method
