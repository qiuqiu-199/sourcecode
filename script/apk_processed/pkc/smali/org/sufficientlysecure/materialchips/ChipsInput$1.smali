.class Lorg/sufficientlysecure/materialchips/ChipsInput$1;
.super Ljava/lang/Object;
.source "ChipsInput.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/materialchips/ChipsInput;->initEditText()V
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

    .line 147
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$1;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 151
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 152
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x43

    if-ne p1, p2, :cond_0

    .line 154
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$1;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-static {p1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->access$000(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$1;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-static {p1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->access$100(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->removeLastChip()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
