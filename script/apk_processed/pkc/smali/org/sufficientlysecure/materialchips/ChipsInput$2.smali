.class Lorg/sufficientlysecure/materialchips/ChipsInput$2;
.super Ljava/lang/Object;
.source "ChipsInput.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 161
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$2;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    if-eqz p3, :cond_1

    .line 164
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_1

    .line 165
    :cond_0
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$2;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    iget-object p2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$2;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-static {p2}, Lorg/sufficientlysecure/materialchips/ChipsInput;->access$000(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    move-result-object p2

    invoke-virtual {p2}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/sufficientlysecure/materialchips/ChipsInput;->onActionDone(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
