.class Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;
.super Ljava/lang/Object;
.source "EmailEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 56
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;---><init>(Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;--->afterTextChanged(Landroid/text/Editable;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;--->beforeTextChanged(Ljava/lang/CharSequence;III)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText$1;--->onTextChanged(Ljava/lang/CharSequence;III)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
