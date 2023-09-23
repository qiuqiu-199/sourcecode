.class public Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "OrbotStartDialogFragment.java"


# static fields
.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARG_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final ARG_MIDDLE_BUTTON:Ljava/lang/String; = "middleButton"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final MESSAGE_DIALOG_CANCELLED:I = 0x2

.field public static final MESSAGE_MIDDLE_BUTTON:I = 0x1

.field public static final MESSAGE_ORBOT_STARTED:I = 0x3

.field private static final ORBOT_REQUEST_CODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 44
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Landroid/os/Messenger;III)Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    move/16 p0, p3

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "messenger"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "title"

    .line 59
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "message"

    .line 60
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "middleButton"

    .line 61
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;-><init>()V

    .line 64
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;--->newInstance(Landroid/os/Messenger;III)Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 146
    invoke-super {v0, v1, v2, p0}, Landroid/support/v4/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 149
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "messenger"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 151
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 p0, 0x3

    .line 152
    iput p0, v2, Landroid/os/Message;->what:I

    const/4 p0, 0x0

    .line 154
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Messenger is null!"

    .line 158
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v1, v2, p0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Exception sending message, Is handler present?"

    .line 156
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v1, v2, p0}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :goto_0
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 73
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v0, "messenger"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .line 74
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "middleButton"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 77
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 79
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v3

    .line 81
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v4, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 84
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$1;

    invoke-direct {v0, v5, v6}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;Landroid/os/Messenger;)V

    const v1, 0x7f110bc2

    invoke-virtual {v4, v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 100
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$2;

    invoke-direct {v0, v5, v6}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;Landroid/os/Messenger;)V

    invoke-virtual {v4, v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 115
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$3;

    invoke-direct {v6, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;)V

    const v0, 0x7f110bc5

    invoke-virtual {v4, v0, v6}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStart()V
    .locals 5

    move-object/16 v2, p0

    .line 127
    invoke-super {v2}, Landroid/support/v4/app/DialogFragment;->onStart()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;--->onStart()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 132
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 133
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$4;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
