.class Lcom/astuetz/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/astuetz/PagerSlidingTabStrip;->addTab(ILjava/lang/CharSequence;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/astuetz/PagerSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;I)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {p1}, Lcom/astuetz/PagerSlidingTabStrip;->access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->val$position:I

    if-eq p1, v0, :cond_0

    .line 256
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {p1}, Lcom/astuetz/PagerSlidingTabStrip;->access$300(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 257
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {v0, p1}, Lcom/astuetz/PagerSlidingTabStrip;->access$400(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V

    .line 258
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {p1}, Lcom/astuetz/PagerSlidingTabStrip;->access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->val$position:I

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {p1}, Lcom/astuetz/PagerSlidingTabStrip;->access$500(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-static {p1}, Lcom/astuetz/PagerSlidingTabStrip;->access$500(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    move-result-object p1

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;->onTabReselected(I)V

    :cond_1
    :goto_0
    return-void
.end method
