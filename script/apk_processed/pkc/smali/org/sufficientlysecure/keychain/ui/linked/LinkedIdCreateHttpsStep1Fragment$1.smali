.class Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$1;
.super Ljava/lang/Object;
.source "LinkedIdCreateHttpsStep1Fragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 68
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev1Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev1Fragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 81
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev3Fragment;->access$000(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev3Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev3Fragment;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev3Fragment;->mEditUri:Landroid/widget/EditText;

    const v0, 0x7f0800e7

    invoke-virtual {v3, v1, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev3Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev3Fragment;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev3Fragment;->mEditUri:Landroid/widget/EditText;

    const v0, 0x7f0800e6

    invoke-virtual {v3, v1, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev3Fragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev3Fragment;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStev3Fragment;->mEditUri:Landroid/widget/EditText;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$1;--->afterTextChanged(Landroid/text/Editable;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$1;--->beforeTextChanged(Ljava/lang/CharSequence;III)V"

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

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateHttpsStep1Fragment$1;--->onTextChanged(Ljava/lang/CharSequence;III)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
