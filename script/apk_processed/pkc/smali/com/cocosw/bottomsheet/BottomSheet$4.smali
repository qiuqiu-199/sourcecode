.class Lcom/cocosw/bottomsheet/BottomSheet$4;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocosw/bottomsheet/BottomSheet;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocosw/bottomsheet/BottomSheet;

.field final synthetic val$mDialogView:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;


# direct methods
.method constructor <init>(Lcom/cocosw/bottomsheet/BottomSheet;Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    iput-object p2, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->val$mDialogView:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 320
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$200(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget p2, Lcom/cocosw/bottomsheet/R$id;->bs_more:I

    if-ne p1, p2, :cond_0

    .line 321
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$000(Lcom/cocosw/bottomsheet/BottomSheet;)V

    .line 322
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->val$mDialogView:Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->setCollapsible(Z)V

    return-void

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$200(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cocosw/bottomsheet/ActionMenuItem;

    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/ActionMenuItem;->invoke()Z

    move-result p1

    if-nez p1, :cond_2

    .line 327
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$400(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1800(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 328
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$400(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1800(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p2}, Lcom/cocosw/bottomsheet/BottomSheet;->access$200(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    invoke-interface {p1, p2}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$400(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1900(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 330
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$400(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$1900(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object p2, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    iget-object p4, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p4}, Lcom/cocosw/bottomsheet/BottomSheet;->access$200(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/MenuItem;

    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 332
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$4;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->dismiss()V

    return-void
.end method
