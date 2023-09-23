.class public Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AddUserIdDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final ARG_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final ARG_NAME:Ljava/lang/String; = "name"

.field public static final MESSAGE_CANCEL:I = 0x2

.field public static final MESSAGE_DATA_USER_ID:Ljava/lang/String; = "user_id"

.field public static final MESSAGE_OKAY:I = 0x1


# instance fields
.field private mEmail:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

.field private mMessenger:Landroid/os/Messenger;

.field private mName:Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 48
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;)Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->mName:Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;)Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->mEmail:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void
.end method

.method private hideKeyboard()V
    .locals 6

    move-object/16 v3, p0

    .line 155
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    .line 159
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 162
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 166
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;--->hideKeyboard()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Landroid/os/Messenger;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 63
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "messenger"

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "name"

    .line 66
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;--->newInstance(Landroid/os/Messenger;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendMessageToHandler(Ljava/lang/Integer;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 190
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 191
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    .line 194
    :try_start_0
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Messenger is null!"

    .line 198
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Exception sending message, Is handler present?"

    .line 196
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;--->sendMessageToHandler(Ljava/lang/Integer;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 208
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 209
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    const/4 v2, 0x0

    .line 215
    :try_start_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "Messenger is null!"

    .line 219
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v0, "Exception sending message, Is handler present?"

    .line 217
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;--->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 140
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->dismiss()V

    const/4 v1, 0x2

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->sendMessageToHandler(Ljava/lang/Integer;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 77
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 78
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->mMessenger:Landroid/os/Messenger;

    .line 79
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v1, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110140

    .line 83
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v2, 0x7f0c001f

    const/4 v3, 0x0

    .line 86
    invoke-virtual {v5, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 87
    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f090041

    .line 89
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    iput-object v2, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->mName:Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    const v2, 0x7f090040

    .line 90
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->mEmail:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    .line 92
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->mName:Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$1;

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;)V

    const v0, 0x104000a

    invoke-virtual {v1, v0, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 108
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$2;

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;)V

    const/high16 v0, 0x1040000

    invoke-virtual {v1, v0, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 120
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->mEmail:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$3;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;)V

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 133
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->mEmail:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->requestFocus()Z

    .line 135
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 148
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->hideKeyboard()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    const/4 v1, 0x6

    if-ne v1, v2, :cond_0

    .line 175
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AlertDialog;

    const/4 v2, -0x1

    .line 176
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;--->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
