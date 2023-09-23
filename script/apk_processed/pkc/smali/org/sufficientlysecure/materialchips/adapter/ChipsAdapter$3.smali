.class Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;
.super Ljava/lang/Object;
.source "ChipsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->handleClickOnEditText(Lorg/sufficientlysecure/materialchips/ChipView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    iput p2, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    .line 128
    new-array v0, v0, [I

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 131
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    iget v2, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;->val$position:I

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->getItem(I)Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->getDetailedChipView(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    move-result-object p1

    .line 132
    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-static {v1, p1, v0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->access$200(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;Lorg/sufficientlysecure/materialchips/views/DetailedChipView;[I)V

    .line 135
    new-instance v0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3$1;

    invoke-direct {v0, p0, p1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3$1;-><init>(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;Lorg/sufficientlysecure/materialchips/views/DetailedChipView;)V

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->setOnDeleteClicked(Landroid/view/View$OnClickListener;)V

    return-void
.end method
