.class Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;
.super Ljava/lang/Object;
.source "AddSubkeyDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 185
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-wide/16 p1, p4

    .line 190
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/util/Choice;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Choice;->getId()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    .line 194
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 196
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Z

    move-result v2

    const/4 p0, 0x1

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$300(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 200
    :cond_0
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ECC_P521:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    const/4 p1, 0x0

    if-eq v1, v2, :cond_3

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ECC_P256:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->EDDSA:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    if-ne v1, v2, :cond_2

    .line 206
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 207
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_1

    .line 210
    :cond_2
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 211
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_1

    .line 201
    :cond_3
    :goto_0
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 202
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :cond_4
    :goto_1
    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;--->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;--->onNothingSelected(Landroid/widget/AdapterView;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
