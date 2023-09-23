.class Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3;
.super Ljava/lang/Object;
.source "PassphraseDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->openKeyboard(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/widget/TextView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 401
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3;->this$0:Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3;->val$textView:Landroid/widget/TextView;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3;---><init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/widget/TextView;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 404
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3;->val$textView:Landroid/widget/TextView;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3$1;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3$1;-><init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3;--->onFocusChange(Landroid/view/View;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
