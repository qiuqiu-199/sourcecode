.class public Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;
.super Lorg/sufficientlysecure/keychain/ui/DecryptFragment;
.source "DisplayTextFragment.java"


# static fields
.field public static final ARG_PLAINTEXT:Ljava/lang/String; = "plaintext"


# instance fields
.field private mShowMenuOptions:Z

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 44
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->mShowMenuOptions:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 74
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "clipboard"

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-nez v1, :cond_1

    const v4, 0x7f11016c

    .line 81
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    :cond_1
    const-string v2, "Keychain"

    .line 85
    invoke-static {v2, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v4, 0x7f110cd3

    .line 86
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;--->copyToClipboard(Ljava/lang/String;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createSendIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TEXT"

    .line 68
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "text/plain"

    .line 69
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;--->createSendIntent(Ljava/lang/String;)Landroid/content/Intent;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/lang/String;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 55
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;-><init>()V

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "plaintext"

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "decrypt_verify_result"

    .line 59
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;--->newInstance(Ljava/lang/String;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setAutoLinkFromSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const/4 v0, 0x0

    if-nez v3, :cond_0

    .line 124
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    return-void

    .line 128
    :cond_0
    invoke-virtual {v3}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v3

    const/4 v1, 0x1

    if-eq v3, v1, :cond_1

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    .line 136
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->mText:Landroid/widget/TextView;

    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;--->setAutoLinkFromSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 91
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 150
    invoke-super {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->mShowMenuOptions:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0006

    .line 152
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0051

    const/4 v0, 0x0

    .line 98
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09011e

    .line 99
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->mText:Landroid/widget/TextView;

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 158
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090110

    if-eq v0, v1, :cond_2

    const v1, 0x7f09011c

    if-eq v0, v1, :cond_1

    const v1, 0x7f09011f

    if-eq v0, v1, :cond_0

    .line 173
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 169
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->startDisplayLogActivity()V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->createSendIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const v0, 0x7f110cfa

    .line 161
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->copyToClipboard(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onVerifyLoaded(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 144
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->mShowMenuOptions:Z

    .line 145
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;--->onVerifyLoaded(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 105
    invoke-super {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;--->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "plaintext"

    .line 109
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "decrypt_verify_result"

    .line 110
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    if-nez v2, :cond_0

    .line 113
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing decryption result argument!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->setAutoLinkFromSignatureResult(Lorg/openintents/openpgp/OpenPgpSignatureResult;)V

    .line 118
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/DisplayTextFragment;->loadVerifyResult(Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;)V

    return-void
.end method
