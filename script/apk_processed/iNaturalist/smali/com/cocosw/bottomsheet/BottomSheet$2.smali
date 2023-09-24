.class Lcom/cocosw/bottomsheet/BottomSheet$2;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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


# direct methods
.method constructor <init>(Lcom/cocosw/bottomsheet/BottomSheet;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet;->access$100(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet;->access$100(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$300(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/widget/GridView;

    move-result-object p1

    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet;->access$200(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/SimpleSectionedGridAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$300(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/GridView;->startLayoutAnimation()V

    .line 180
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$400(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$500(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$600(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$600(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {p1}, Lcom/cocosw/bottomsheet/BottomSheet;->access$600(Lcom/cocosw/bottomsheet/BottomSheet;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/cocosw/bottomsheet/BottomSheet$2;->this$0:Lcom/cocosw/bottomsheet/BottomSheet;

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet;->access$400(Lcom/cocosw/bottomsheet/BottomSheet;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->access$500(Lcom/cocosw/bottomsheet/BottomSheet$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
