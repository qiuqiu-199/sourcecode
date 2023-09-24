.class Leu/davidea/flexibleadapter/FlexibleAdapter$9;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->onLoadMore(I)V
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

    .line 2053
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2057
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$900(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    .line 2059
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollListener:Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2060
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "onLoadMore     invoked!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2061
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollListener:Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v2

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getEndlessCurrentPage()I

    move-result v3

    invoke-interface {v0, v2, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;->onLoadMore(II)V

    .line 2064
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1002(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z

    return-void
.end method
