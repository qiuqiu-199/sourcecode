.class Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;
.super Lorg/sufficientlysecure/materialchips/ChipsInput$SimpleChipsListener;
.source "EncryptModeAsymmetricFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/materialchips/ChipsInput$SimpleChipsListener<",
        "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;

.field final synthetic val$vEncryptionIcon:Landroid/widget/ViewAnimator;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;Landroid/widget/ViewAnimator;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 103
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;->val$vEncryptionIcon:Landroid/widget/ViewAnimator;

    invoke-direct {v0}, Lorg/sufficientlysecure/materialchips/ChipsInput$SimpleChipsListener;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;Landroid/widget/ViewAnimator;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onChipAdded(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 106
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;->val$vEncryptionIcon:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 107
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;->val$vEncryptionIcon:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;--->onChipAdded(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onChipAdded(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V
    .locals 0

    .line 103
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;->onChipAdded(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;I)V

    return-void
.end method

.method public onChipRemoved(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 114
    :goto_0
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;->val$vEncryptionIcon:Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 115
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;->val$vEncryptionIcon:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :cond_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;--->onChipRemoved(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onChipRemoved(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V
    .locals 0

    .line 103
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$1;->onChipRemoved(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;I)V

    return-void
.end method
