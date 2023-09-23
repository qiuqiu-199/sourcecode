.class Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3$1;
.super Ljava/lang/Object;
.source "ChipsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;

.field final synthetic val$detailedChipView:Lorg/sufficientlysecure/materialchips/views/DetailedChipView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;Lorg/sufficientlysecure/materialchips/views/DetailedChipView;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3$1;->this$1:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;

    iput-object p2, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3$1;->val$detailedChipView:Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3$1;->this$1:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;

    iget-object p1, p1, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3$1;->this$1:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;

    iget v0, v0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3;->val$position:I

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->removeChip(I)V

    .line 139
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$3$1;->val$detailedChipView:Lorg/sufficientlysecure/materialchips/views/DetailedChipView;

    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/views/DetailedChipView;->fadeOut()V

    return-void
.end method
