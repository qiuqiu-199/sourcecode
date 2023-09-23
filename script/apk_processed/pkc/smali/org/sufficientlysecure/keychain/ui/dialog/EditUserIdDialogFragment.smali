.class public Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "EditUserIdDialogFragment.java"


# static fields
.field private static final ARG_IS_REVOKED:Ljava/lang/String; = "is_revoked"

.field private static final ARG_IS_REVOKED_PENDING:Ljava/lang/String; = "is_revoked_pending"

.field private static final ARG_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final MESSAGE_CHANGE_PRIMARY_USER_ID:I = 0x1

.field public static final MESSAGE_REVOKE:I = 0x2


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

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void
.end method

.method public static newInstance(Landroid/os/Messenger;ZZ)Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move/16 v5, p2

    .line 48
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "messenger"

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "is_revoked"

    .line 51
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "is_revoked_pending"

    .line 52
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;--->newInstance(Landroid/os/Messenger;ZZ)Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 124
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 125
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    const/4 v2, 0x0

    .line 131
    :try_start_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "Messenger is null!"

    .line 135
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v0, "Exception sending message, Is handler present?"

    .line 133
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;--->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 64
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "messenger"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->mMessenger:Landroid/os/Messenger;

    .line 65
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "is_revoked"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 66
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_revoked_pending"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 68
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110145

    .line 69
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v0, 0x7f030003

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 74
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$1;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;)V

    invoke-virtual {v1, v4, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    const v4, 0x7f110144

    .line 87
    invoke-virtual {v1, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v0, 0x7f030002

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 91
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$2;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;)V

    invoke-virtual {v1, v4, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    :goto_0
    const/high16 v4, 0x1040000

    .line 108
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$3;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;)V

    invoke-virtual {v1, v4, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
