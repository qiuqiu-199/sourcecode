.class public Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ShareLogDialogFragment.java"


# static fields
.field private static final ARG_STREAM:Ljava/lang/String; = "stream"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;
    .locals 5

    move-object/16 v2, p0

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "stream"

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;-><init>()V

    .line 40
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;--->newInstance(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 49
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "stream"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 51
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 53
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110ca0

    .line 54
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f110c9e

    .line 55
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$2;

    invoke-direct {v2, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;)V

    const v3, 0x7f110c9d

    .line 56
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$1;

    invoke-direct {v2, v4, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;Landroid/net/Uri;)V

    const v5, 0x7f110c9f

    .line 63
    invoke-virtual {v0, v5, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/ShareLogDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
