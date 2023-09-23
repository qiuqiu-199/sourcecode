.class public Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "EditSubkeyDialogFragment.java"


# static fields
.field private static final ARG_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final MESSAGE_CHANGE_EXPIRY:I = 0x1

.field public static final MESSAGE_REVOKE:I = 0x2

.field public static final MESSAGE_STRIP:I = 0x3

.field public static final SUBKEY_MENU_CHANGE_EXPIRY:I = 0x0

.field public static final SUBKEY_MENU_REVOKE_SUBKEY:I = 0x1

.field public static final SUBKEY_MENU_STRIP_SUBKEY:I = 0x2


# instance fields
.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->showAlertDialog()V

    return-void
.end method

.method public static newInstance(Landroid/os/Messenger;)Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;
    .locals 6

    move-object/16 v3, p0

    .line 48
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "messenger"

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;--->newInstance(Landroid/os/Messenger;)Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 123
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    const/4 v2, 0x0

    .line 129
    :try_start_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "Messenger is null!"

    .line 133
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v0, "Exception sending message, Is handler present?"

    .line 131
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;--->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showAlertDialog()V
    .locals 6

    move-object/16 v3, p0

    .line 98
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110cd8

    .line 99
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110029

    .line 100
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 101
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment$3;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;)V

    const v2, 0x7f110ccf

    invoke-virtual {v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 107
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment$4;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;)V

    const v2, 0x7f110067

    invoke-virtual {v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;--->showAlertDialog()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 62
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "messenger"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->mMessenger:Landroid/os/Messenger;

    .line 64
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110143

    .line 67
    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 68
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment$1;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;)V

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 87
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment$2;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;)V

    const/high16 v1, 0x1040000

    invoke-virtual {v3, v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
