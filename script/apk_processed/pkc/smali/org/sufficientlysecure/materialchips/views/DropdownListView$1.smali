.class Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;
.super Ljava/lang/Object;
.source "DropdownListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/materialchips/views/DropdownListView;->build(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/materialchips/views/DropdownListView;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;->this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 48
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;->this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    .line 49
    invoke-virtual {v1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;->this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {v1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 56
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;->this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {v1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->getNavBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 60
    :cond_0
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;->this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {v1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 62
    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;->this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    :cond_1
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;->this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-static {v1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->access$000(Lorg/sufficientlysecure/materialchips/views/DropdownListView;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;->this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 69
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;->this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->access$000(Lorg/sufficientlysecure/materialchips/views/DropdownListView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/views/DropdownListView$1;->this$0:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->access$000(Lorg/sufficientlysecure/materialchips/views/DropdownListView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
