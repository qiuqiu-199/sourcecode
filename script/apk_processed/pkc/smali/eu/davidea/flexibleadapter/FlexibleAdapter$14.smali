.class Leu/davidea/flexibleadapter/FlexibleAdapter$14;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->autoScrollWithDelay(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field final synthetic val$position:I

.field final synthetic val$subItemsCount:I


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;II)V
    .locals 0

    .line 4986
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iput p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->val$position:I

    iput p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->val$subItemsCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 4989
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4990
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object p1

    invoke-interface {p1}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 4991
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v1

    invoke-interface {v1}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 4992
    iget v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->val$position:I

    iget v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->val$subItemsCount:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    if-lez v2, :cond_2

    .line 4995
    iget v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->val$position:I

    sub-int/2addr v2, p1

    .line 4996
    iget v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->val$position:I

    iget v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->val$subItemsCount:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4997
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4998
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v1

    invoke-interface {v1}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->getSpanCount()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 5000
    rem-int/2addr v0, v1

    add-int/2addr v0, v1

    :cond_1
    add-int/2addr p1, v0

    .line 5004
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1300(Leu/davidea/flexibleadapter/FlexibleAdapter;I)V

    goto :goto_0

    .line 5005
    :cond_2
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->val$position:I

    if-ge v0, p1, :cond_3

    .line 5006
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$14;->val$position:I

    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1300(Leu/davidea/flexibleadapter/FlexibleAdapter;I)V

    :cond_3
    :goto_0
    return v3
.end method
