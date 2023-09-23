.class Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$1;
.super Ljava/lang/Object;
.source "EncryptTextFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 104
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 117
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;->access$002(Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$1;--->afterTextChanged(Landroid/text/Editable;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$1;--->beforeTextChanged(Ljava/lang/CharSequence;III)V"

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

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/EncryptTextFragment$1;--->onTextChanged(Ljava/lang/CharSequence;III)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
