.class Lorg/sufficientlysecure/materialchips/ChipsInput$3;
.super Ljava/lang/Object;
.source "ChipsInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 172
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$3;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 180
    iget-object p2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput$3;->this$0:Lorg/sufficientlysecure/materialchips/ChipsInput;

    invoke-virtual {p2, p1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method
