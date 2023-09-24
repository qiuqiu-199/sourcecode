.class Lcom/mikepenz/fastadapter/FastAdapter$3;
.super Ljava/lang/Object;
.source "FastAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 485
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$3;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    iput-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter$3;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 488
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$3;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v0}, Lcom/mikepenz/fastadapter/FastAdapter;->access$800(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$3;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter$3;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$3;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, v7}, Lcom/mikepenz/fastadapter/FastAdapter;->getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter$3;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-static {v1}, Lcom/mikepenz/fastadapter/FastAdapter;->access$800(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnTouchListener;

    move-result-object v2

    iget-object v5, v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    iget-object v6, v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/mikepenz/fastadapter/FastAdapter$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
