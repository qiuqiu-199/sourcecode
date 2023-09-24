.class Lorg/sufficientlysecure/materialchips/ChipsInput$5;
.super Ljava/lang/Object;
.source "ChipsInput.java"

# interfaces
.implements Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/materialchips/ChipsInput;->setChipDropdownAdapter(Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

.field final synthetic val$filterableAdapter:Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/materialchips/ChipsInput;Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$5;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    iput-object p2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$5;->val$filterableAdapter:Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 0

    .line 313
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$5;->val$filterableAdapter:Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;

    invoke-virtual {p1, p2}, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;->getItem(I)Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;

    move-result-object p1

    .line 314
    iget-object p2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$5;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-static {p2}, Lorg/sufficientlysecure/materialchips/ChipsInput;->access$100(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->addChip(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)V

    return-void
.end method
