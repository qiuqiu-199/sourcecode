.class Leu/davidea/flexibleadapter/FlexibleAdapter$7;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->hideAllHeaders()V
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

    .line 1584
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1587
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$502(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z

    .line 1589
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$600(Leu/davidea/flexibleadapter/FlexibleAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 1590
    :goto_0
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$700(Leu/davidea/flexibleadapter/FlexibleAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1591
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    .line 1592
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v3, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1593
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    check-cast v2, Leu/davidea/flexibleadapter/items/IHeader;

    invoke-static {v3, v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$800(Leu/davidea/flexibleadapter/FlexibleAdapter;ILeu/davidea/flexibleadapter/items/IHeader;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1596
    :cond_1
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$302(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z

    .line 1598
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1599
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$100(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->clearHeaderWithAnimation()V

    .line 1602
    :cond_2
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$7;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$502(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z

    return-void
.end method
