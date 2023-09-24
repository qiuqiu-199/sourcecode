.class Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$2;
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

    .line 115
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$2;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    iput p2, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$2;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    iget v0, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$2;->val$position:I

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->removeChip(I)V

    return-void
.end method
