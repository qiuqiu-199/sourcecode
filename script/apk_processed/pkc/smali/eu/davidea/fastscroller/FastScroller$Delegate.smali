.class public Leu/davidea/fastscroller/FastScroller$Delegate;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/fastscroller/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FastScroller$Delegate"


# instance fields
.field private mFastScroller:Leu/davidea/fastscroller/FastScroller;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFastScroller()Leu/davidea/fastscroller/FastScroller;
    .locals 1

    .line 685
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    return-object v0
.end method

.method public isFastScrollerEnabled()Z
    .locals 1

    .line 676
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    invoke-virtual {v0}, Leu/davidea/fastscroller/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 650
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    const/4 p1, 0x0

    .line 654
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    .line 655
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public setFastScroller(Leu/davidea/fastscroller/FastScroller;)V
    .locals 3

    .line 702
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 703
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView cannot be null. Setup FastScroller after the Adapter has been added to the RecyclerView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-eqz p1, :cond_1

    .line 705
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    .line 706
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Leu/davidea/fastscroller/FastScroller;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 707
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leu/davidea/fastscroller/FastScroller;->setEnabled(Z)V

    .line 708
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    sget v0, Leu/davidea/flexibleadapter/R$layout;->library_fast_scroller_layout:I

    sget v1, Leu/davidea/flexibleadapter/R$id;->fast_scroller_bubble:I

    sget v2, Leu/davidea/flexibleadapter/R$id;->fast_scroller_handle:I

    invoke-virtual {p1, v0, v1, v2}, Leu/davidea/fastscroller/FastScroller;->setViewsToUse(III)V

    goto :goto_0

    .line 713
    :cond_1
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    if-eqz p1, :cond_2

    .line 714
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Leu/davidea/fastscroller/FastScroller;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 715
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    :cond_2
    :goto_0
    return-void
.end method

.method public toggleFastScroller()V
    .locals 1

    .line 666
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$Delegate;->mFastScroller:Leu/davidea/fastscroller/FastScroller;

    invoke-virtual {v0}, Leu/davidea/fastscroller/FastScroller;->toggleFastScroller()V

    :cond_0
    return-void
.end method
