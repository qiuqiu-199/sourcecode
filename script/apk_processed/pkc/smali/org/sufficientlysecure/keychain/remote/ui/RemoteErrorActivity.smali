.class public Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "RemoteErrorActivity.java"


# static fields
.field public static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "error_message"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0026

    .line 39
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 44
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v0, "error_message"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x10000

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-interface {v0, v1, v2, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 51
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;->initToolbar()V

    .line 54
    new-instance v5, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity$1;

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;)V

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;->setFullScreenDialogClose(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f090049

    .line 66
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 67
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
