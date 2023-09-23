.class public Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListenerImpl;
.super Ljava/lang/Object;
.source "FastAdapter.java"

# interfaces
.implements Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/fastadapter/FastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnBindViewHolderListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/fastadapter/FastAdapter;


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/FastAdapter;)V
    .locals 0

    .line 1716
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListenerImpl;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListenerImpl;->this$0:Lcom/mikepenz/fastadapter/FastAdapter;

    invoke-virtual {v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/mikepenz/fastadapter/IItem;->bindView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)V

    return-void
.end method
