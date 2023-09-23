.class final Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;
.super Ljava/lang/Object;
.source "PassphraseDialogActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->setupEditTextFocusNext([Landroid/widget/EditText;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$backupCodes:[Landroid/widget/EditText;

.field final synthetic val$hasPrefix:Z

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(ZI[Landroid/widget/EditText;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 424
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;->val$hasPrefix:Z

    iput v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;->val$idx:I

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;->val$backupCodes:[Landroid/widget/EditText;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;---><init>(ZI[Landroid/widget/EditText;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;--->afterTextChanged(Landroid/text/Editable;)V"

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

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;--->beforeTextChanged(Ljava/lang/CharSequence;III)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move/16 p0, p3

    move/16 p1, p4

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 432
    :goto_0
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;->val$hasPrefix:Z

    if-eqz v1, :cond_1

    iget v1, v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;->val$idx:I

    if-nez v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    add-int/2addr v4, p1

    if-ne v4, v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz p0, :cond_3

    if-eqz v3, :cond_3

    .line 436
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;->val$backupCodes:[Landroid/widget/EditText;

    iget v4, v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;->val$idx:I

    add-int/2addr v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    :cond_3
    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;--->onTextChanged(Ljava/lang/CharSequence;III)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
