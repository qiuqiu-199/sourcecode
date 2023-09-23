.class public Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RemoteDisplayTransferCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayTransferCodeDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 58
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setTransferCode([Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/util/Passphrase;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 91
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v6

    invoke-static {v6}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v6

    .line 92
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;->isNumeric9x4Passphrase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Illegal passphrase format!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v0, 0x0

    .line 96
    aget-object v1, v5, v0

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;

    const-string v2, "34"

    .line 97
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    .line 98
    invoke-virtual {v6, v0, v2}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->setPrefix(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    .line 99
    invoke-virtual {v6, v2, v0}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 102
    aget-object v1, v5, v0

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {v6, v2, v3}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;--->setTransferCode([Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/util/Passphrase;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$onCreateDialog$0$RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 62
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 64
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "transfer_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 66
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v6

    .line 67
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v1, v6}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x7f0c0024

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 71
    invoke-virtual {v1, v6}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 72
    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment$$Lambda$0;

    invoke-direct {v3, v5}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;)V

    const v4, 0x7f11008e

    invoke-virtual {v1, v4, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v3, 0x9

    .line 74
    new-array v3, v3, [Landroid/widget/TextView;

    const v4, 0x7f090330

    .line 75
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v3, v2

    const v2, 0x7f090331

    .line 76
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const v2, 0x7f090332

    .line 77
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const v2, 0x7f090333

    .line 78
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const v2, 0x7f090334

    .line 79
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x4

    aput-object v2, v3, v4

    const v2, 0x7f090335

    .line 80
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x5

    aput-object v2, v3, v4

    const v2, 0x7f090336

    .line 81
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x6

    aput-object v2, v3, v4

    const v2, 0x7f090337

    .line 82
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x7

    aput-object v2, v3, v4

    const v2, 0x7f090338

    .line 83
    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/16 v2, 0x8

    aput-object v6, v3, v2

    .line 85
    invoke-direct {v5, v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;->setTransferCode([Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/util/Passphrase;)V

    .line 87
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 108
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
