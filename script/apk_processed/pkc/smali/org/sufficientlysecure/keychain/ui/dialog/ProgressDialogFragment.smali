.class public Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressDialogFragment.java"


# static fields
.field private static final ARG_CANCELABLE:Ljava/lang/String; = "cancelable"

.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARG_STYLE:Ljava/lang/String; = "style"


# instance fields
.field private cancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field mCanCancel:Z

.field mIsCancelled:Z

.field mPreventCancel:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 43
    invoke-direct {v1}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mCanCancel:Z

    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mPreventCancel:Z

    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mIsCancelled:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;)Landroid/support/v4/os/CancellationSignal;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;IZ)Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move/16 v5, p2

    .line 62
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "style"

    .line 65
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "cancelable"

    .line 66
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;--->newInstance(Ljava/lang/String;IZ)Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 103
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 105
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 108
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 111
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "style"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 115
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cancelable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v5, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mCanCancel:Z

    .line 117
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 121
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mCanCancel:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    const v2, 0x7f110bf9

    .line 124
    invoke-virtual {v6, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    .line 123
    invoke-virtual {v1, v0, v6, v2}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    :cond_0
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$1;

    invoke-direct {v6, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;)V

    .line 142
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v1

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStart()V
    .locals 5

    move-object/16 v2, p0

    .line 169
    invoke-super {v2}, Landroid/support/v4/app/DialogFragment;->onStart()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;--->onStart()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 173
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCancellationSignal(Landroid/support/v4/os/CancellationSignal;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 164
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->cancellationSignal:Landroid/support/v4/os/CancellationSignal;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;--->setCancellationSignal(Landroid/support/v4/os/CancellationSignal;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPreventCancel()V
    .locals 5

    move-object/16 v2, p0

    .line 149
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mIsCancelled:Z

    if-nez v0, :cond_2

    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mCanCancel:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mPreventCancel:Z

    .line 154
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x2

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_2
    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;--->setPreventCancel()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(II)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    .line 78
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 80
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mIsCancelled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 85
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    return-void

    :cond_1
    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;--->setProgress(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(III)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 74
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->setProgress(Ljava/lang/String;II)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;--->setProgress(III)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(Ljava/lang/String;II)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move/16 p0, p3

    .line 89
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 91
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->mIsCancelled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 97
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMax(I)V

    return-void

    :cond_1
    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;--->setProgress(Ljava/lang/String;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
