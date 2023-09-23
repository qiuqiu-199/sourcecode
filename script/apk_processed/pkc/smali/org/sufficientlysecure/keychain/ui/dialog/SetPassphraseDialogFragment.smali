.class public Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SetPassphraseDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final ARG_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field public static final MESSAGE_NEW_PASSPHRASE:Ljava/lang/String; = "new_passphrase"

.field public static final MESSAGE_OKAY:I = 0x1


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mNoPassphraseCheckBox:Landroid/widget/CheckBox;

.field private mPassphraseAgainEditText:Landroid/widget/EditText;

.field private mPassphraseEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 49
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mPassphraseAgainEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mNoPassphraseCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void
.end method

.method private hideKeyboard()V
    .locals 6

    move-object/16 v3, p0

    .line 194
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    .line 198
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 201
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 205
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;--->hideKeyboard()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Landroid/os/Messenger;I)Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 70
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;-><init>()V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    .line 72
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "messenger"

    .line 73
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;--->newInstance(Landroid/os/Messenger;I)Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 229
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 230
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    const/4 v2, 0x0

    .line 236
    :try_start_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "Messenger is null!"

    .line 240
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v0, "Exception sending message, Is handler present?"

    .line 238
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;--->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 85
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 87
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 88
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "messenger"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mMessenger:Landroid/os/Messenger;

    .line 90
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v1, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00d6

    const/4 v3, 0x0

    .line 95
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f09026b

    .line 98
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v4, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    const v2, 0x7f09026c

    .line 99
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v4, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mPassphraseAgainEditText:Landroid/widget/EditText;

    const v2, 0x7f09026a

    .line 100
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mNoPassphraseCheckBox:Landroid/widget/CheckBox;

    .line 102
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mNoPassphraseCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$1;

    invoke-direct {v2, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;

    invoke-direct {v0, v4, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;Landroid/app/Activity;)V

    const v5, 0x104000a

    invoke-virtual {v1, v5, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 151
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$3;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 164
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$4;

    invoke-direct {v2, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 179
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mPassphraseAgainEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x6

    invoke-virtual {v0, v5, v2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 180
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->mPassphraseAgainEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 182
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 187
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->hideKeyboard()V

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

    .line 214
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AlertDialog;

    const/4 v2, -0x1

    .line 215
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;--->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
