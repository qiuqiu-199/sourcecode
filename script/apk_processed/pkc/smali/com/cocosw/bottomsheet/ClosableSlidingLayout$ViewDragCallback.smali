.class Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "ClosableSlidingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocosw/bottomsheet/ClosableSlidingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;


# direct methods
.method private constructor <init>(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;Lcom/cocosw/bottomsheet/ClosableSlidingLayout$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;-><init>(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$300(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 210
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0xb

    if-ge p2, p4, :cond_0

    .line 211
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-virtual {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->invalidate()V

    .line 213
    :cond_0
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$400(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I

    move-result p2

    sub-int/2addr p2, p3

    const/4 p4, 0x1

    if-ge p2, p4, :cond_1

    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$600(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 214
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$500(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 215
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$600(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$SlideListener;->onClosed()V

    .line 216
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$500(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p4, p3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    :cond_1
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 2

    .line 196
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$100(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)F

    move-result p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_0

    .line 197
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2, p1, p3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$200(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;Landroid/view/View;F)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$300(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {v1}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$400(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 200
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2, p1, p3}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$200(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;Landroid/view/View;F)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object p2, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$500(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p2

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->access$300(Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)I

    move-result v0

    invoke-virtual {p2, p1, p3, v0}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 203
    iget-object p1, p0, Lcom/cocosw/bottomsheet/ClosableSlidingLayout$ViewDragCallback;->this$0:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
