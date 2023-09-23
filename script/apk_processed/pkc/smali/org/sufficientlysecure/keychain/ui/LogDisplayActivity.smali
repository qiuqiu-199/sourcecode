.class public Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "LogDisplayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 27
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c00a6

    .line 47
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 31
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity$1;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;)V

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;->setFullScreenDialogClose(Landroid/view/View$OnClickListener;)V

    return-void
.end method
