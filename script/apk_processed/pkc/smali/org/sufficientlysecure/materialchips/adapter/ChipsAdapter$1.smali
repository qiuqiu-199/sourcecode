.class Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;
.super Ljava/lang/Object;
.source "ChipsAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->autofitEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 91
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->access$000(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v0

    .line 92
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-static {v1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->access$100(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->getLeft()I

    move-result v1

    .line 95
    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-static {v2}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->access$100(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    .line 96
    invoke-static {v1}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 97
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->access$100(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->access$100(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->requestFocus()Z

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->access$100(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$1;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->access$100(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
