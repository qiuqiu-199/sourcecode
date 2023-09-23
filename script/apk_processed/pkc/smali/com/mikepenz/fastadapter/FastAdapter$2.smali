.class Lcom/mikepenz/fastadapter/FastAdapter$2;
.super Ljava/lang/Object;
.source "FastAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 455
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 458
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 461
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    move-result-object v2

    .line 462
    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$600(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 465
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->access$600(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;

    move-result-object v1

    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    iget-object v4, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    invoke-interface {v1, p1, v3, v4, v0}, Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;->onLongClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 469
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$200(Lcom/mikepenz/fastadapter/FastAdapter;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$300(Lcom/mikepenz/fastadapter/FastAdapter;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-object v4, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    invoke-static {v3, p1, v4, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->access$400(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V

    .line 474
    :cond_1
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v3}, Lcom/mikepenz/fastadapter/FastAdapter;->access$700(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 475
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter$2;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->access$700(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;

    move-result-object v1

    iget-object v3, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    iget-object v2, v2, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    invoke-interface {v1, p1, v3, v2, v0}, Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;->onLongClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result v1

    :cond_2
    return v1

    :cond_3
    return v1
.end method
