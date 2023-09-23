.class Leu/davidea/flexibleadapter/FlexibleAdapter$5;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->setStickyHeaders(ZLandroid/view/ViewGroup;)Leu/davidea/flexibleadapter/FlexibleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field final synthetic val$sticky:Z


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V
    .locals 0

    .line 1393
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iput-boolean p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->val$sticky:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1397
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->val$sticky:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$100(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1399
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    new-instance v2, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v4, v4, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderChangeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;

    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 1400
    invoke-static {v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$200(Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;Landroid/view/ViewGroup;)V

    .line 1399
    invoke-static {v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$102(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;)Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    .line 1401
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$100(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    move-result-object v0

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v2, v2, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1402
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Sticky headers enabled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1404
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1405
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$100(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    move-result-object v0

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->detachFromRecyclerView()V

    .line 1406
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$102(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;)Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    .line 1407
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Sticky headers disabled"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
