.class Lcom/mikepenz/fastadapter/FastAdapter$1;
.super Ljava/lang/Object;
.source "FastAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/fastadapter/FastAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/fastadapter/FastAdapter;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 402
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x0

    .line 405
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    move-result-object v2

    .line 406
    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    if-eqz v3, :cond_7

    .line 407
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 409
    instance-of v4, v3, Lcom/mikepenz/fastadapter/IClickable;

    if-eqz v4, :cond_0

    move-object v5, v3

    check-cast v5, Lcom/mikepenz/fastadapter/IClickable;

    invoke-interface {v5}, Lcom/mikepenz/fastadapter/IClickable;->getOnPreItemClickListener()Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 410
    invoke-interface {v5}, Lcom/mikepenz/fastadapter/IClickable;->getOnPreItemClickListener()Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    move-result-object v1

    iget-object v5, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v1, p1, v5, v3, v0}, Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 414
    iget-object v5, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v5}, Lcom/mikepenz/fastadapter/FastAdapter;->access$000(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 415
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->access$000(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    move-result-object v1

    iget-object v5, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v1, p1, v5, v3, v0}, Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    .line 419
    instance-of v5, v3, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v5, :cond_2

    .line 420
    move-object v5, v3

    check-cast v5, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v5}, Lcom/mikepenz/fastadapter/IExpandable;->isAutoExpanding()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 421
    iget-object v5, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v5, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->toggleExpandable(I)V

    .line 426
    :cond_2
    iget-object v5, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v5}, Lcom/mikepenz/fastadapter/FastAdapter;->access$100(Lcom/mikepenz/fastadapter/FastAdapter;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 427
    iget-object v5, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v5}, Lcom/mikepenz/fastadapter/FastAdapter;->getExpandedItems()[I

    move-result-object v5

    .line 428
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_0
    if-ltz v6, :cond_4

    .line 429
    aget v8, v5, v6

    if-eq v8, v0, :cond_3

    .line 430
    iget-object v8, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    aget v9, v5, v6

    invoke-virtual {v8, v9, v7}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(IZ)V

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    .line 436
    iget-object v5, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v5}, Lcom/mikepenz/fastadapter/FastAdapter;->access$200(Lcom/mikepenz/fastadapter/FastAdapter;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v5}, Lcom/mikepenz/fastadapter/FastAdapter;->access$300(Lcom/mikepenz/fastadapter/FastAdapter;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 437
    iget-object v5, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v5, p1, v3, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->access$400(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V

    :cond_5
    if-eqz v4, :cond_6

    .line 441
    move-object v4, v3

    check-cast v4, Lcom/mikepenz/fastadapter/IClickable;

    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IClickable;->getOnItemClickListener()Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 442
    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IClickable;->getOnItemClickListener()Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    move-result-object v1

    iget-object v4, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v1, p1, v4, v3, v0}, Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    :cond_6
    if-nez v1, :cond_7

    .line 446
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->access$500(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 447
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter$1;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->access$500(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    move-result-object v1

    iget-object v2, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    :cond_7
    return-void
.end method
