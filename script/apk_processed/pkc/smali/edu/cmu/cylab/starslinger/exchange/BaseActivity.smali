.class public Ledu/cmu/cylab/starslinger/exchange/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static xshowHelp(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;
    .locals 2

    const-string v0, "ResIdTitle"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResIdMsg"

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p0, 0x1

    .line 70
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 71
    new-instance p0, Ledu/cmu/cylab/starslinger/exchange/BaseActivity$1;

    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity$1;-><init>()V

    const p1, 0x104000a

    invoke-virtual {v1, p1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    new-instance p0, Ledu/cmu/cylab/starslinger/exchange/BaseActivity$2;

    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity$2;-><init>()V

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method


# virtual methods
.method protected finishInvalidBundle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SafeSlinger-Exchange"

    .line 134
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->setResultForParent(I)V

    .line 136
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->finish()V

    return-void
.end method

.method protected setResultForParent(I)V
    .locals 1

    .line 118
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->setResult(I)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    return-void
.end method

.method protected setResultForParent(ILandroid/content/Intent;)V
    .locals 1

    .line 126
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0, p1, p2}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected showHelp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ResIdTitle"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ResIdMsg"

    .line 53
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 56
    :try_start_0
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->removeDialog(I)V

    .line 57
    invoke-virtual {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->showDialog(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 59
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected showNote(I)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->showNote(Ljava/lang/String;)V

    return-void
.end method

.method protected showNote(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SafeSlinger-Exchange"

    .line 102
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x32

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/16 v1, 0xdac

    if-gt v0, v1, :cond_1

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :cond_1
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->lib_name:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->showHelp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
