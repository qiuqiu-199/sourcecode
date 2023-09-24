.class Lorg/sufficientlysecure/materialchips/ChipsInput$4;
.super Ljava/lang/Object;
.source "ChipsInput.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/materialchips/ChipsInput;->filterDropdownList(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/materialchips/ChipsInput;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$4;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterComplete(I)V
    .locals 0

    .line 237
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$4;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-static {p1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->access$200(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 238
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$4;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-static {p1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->access$300(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->fadeIn()V

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$4;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-static {p1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->access$300(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->fadeOut()V

    :goto_0
    return-void
.end method
