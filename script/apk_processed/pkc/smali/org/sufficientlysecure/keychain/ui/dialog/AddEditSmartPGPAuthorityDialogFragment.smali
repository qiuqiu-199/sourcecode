.class public Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AddEditSmartPGPAuthorityDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;
    }
.end annotation


# static fields
.field private static final IN_ACTION:Ljava/lang/String; = "in_dialog_action"

.field private static final IN_ALIAS:Ljava/lang/String; = "in_authority"

.field private static final IN_MESSENGER:Ljava/lang/String; = "in_messenger"

.field private static final IN_POSITION:Ljava/lang/String; = "in_position"

.field private static final IN_URI:Ljava/lang/String; = "in_uri"

.field public static final OUT_ACTION:Ljava/lang/String; = "out_action"

.field public static final OUT_ALIAS:Ljava/lang/String; = "out_alias"

.field public static final OUT_POSITION:Ljava/lang/String; = "out_position"

.field public static final OUT_URI:Ljava/lang/String; = "out_uri"


# instance fields
.field private mAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;

.field private mAuthorityAdd:Landroid/widget/Button;

.field private mAuthorityAliasText:Landroid/widget/EditText;

.field private mAuthorityAliasTextLayout:Landroid/support/design/widget/TextInputLayout;

.field private mMessenger:Landroid/os/Messenger;

.field private mPosition:I

.field private mURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 51
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasTextLayout:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method private hideKeyboard()V
    .locals 6

    move-object/16 v3, p0

    .line 265
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    .line 269
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 272
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 276
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;--->hideKeyboard()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Landroid/os/Messenger;Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;Ljava/lang/String;Landroid/net/Uri;I)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    move/16 p1, p4

    .line 83
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "in_messenger"

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "in_dialog_action"

    .line 86
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "in_authority"

    .line 87
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "in_position"

    .line 88
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p0, :cond_0

    const-string v3, "in_uri"

    .line 90
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;--->newInstance(Landroid/os/Messenger;Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;Ljava/lang/String;Landroid/net/Uri;I)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendMessageToHandler(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 299
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    const/4 v3, 0x0

    .line 305
    :try_start_0
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Messenger is null!"

    .line 309
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Exception sending message, Is handler present?"

    .line 307
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;--->sendMessageToHandler(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public authorityEdited()V
    .locals 6

    move-object/16 v3, p0

    .line 234
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->dismiss()V

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "out_action"

    .line 236
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "out_alias"

    .line 237
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "out_position"

    .line 238
    iget v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mURI:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const-string v1, "out_uri"

    .line 240
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mURI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->sendMessageToHandler(Landroid/os/Bundle;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;--->authorityEdited()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public deleteAuthority()V
    .locals 6

    move-object/16 v3, p0

    .line 247
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->dismiss()V

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "out_action"

    .line 249
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;->DELETE:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "out_alias"

    .line 250
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "out_position"

    .line 251
    iget v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->sendMessageToHandler(Landroid/os/Bundle;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;--->deleteAuthority()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    const/16 v2, 0x7003

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 206
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mURI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 208
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mURI:Landroid/net/Uri;

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 101
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 103
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mMessenger:Landroid/os/Messenger;

    .line 104
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_dialog_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;

    .line 105
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mPosition:I

    .line 106
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mURI:Landroid/net/Uri;

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "in_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mURI:Landroid/net/Uri;

    .line 111
    :goto_0
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v2, 0x7f0c001d

    .line 114
    invoke-virtual {v4, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 115
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0902d5

    .line 117
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasText:Landroid/widget/EditText;

    const v1, 0x7f0902d6

    .line 118
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputLayout;

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasTextLayout:Landroid/support/design/widget/TextInputLayout;

    const v1, 0x7f0902d7

    .line 119
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAdd:Landroid/widget/Button;

    .line 121
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAdd:Landroid/widget/Button;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$1;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasText:Landroid/widget/EditText;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "in_authority"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$7;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditSmartPGPAuthorityDialogFragment$Action:[I

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;->ordinal()I

    move-result v1

    aget v4, v4, v1

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v4, 0x7f110ca4

    .line 137
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    :pswitch_1
    const v4, 0x7f110028

    .line 133
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 143
    :goto_1
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$2;

    invoke-direct {v4, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)V

    const v1, 0x104000a

    invoke-virtual {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    .line 153
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$3;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)V

    invoke-virtual {v0, v4, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 161
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$7;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditSmartPGPAuthorityDialogFragment$Action:[I

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$Action;->ordinal()I

    move-result v2

    aget v4, v4, v2

    packed-switch v4, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    const v4, 0x7f1108c7

    .line 164
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$4;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)V

    invoke-virtual {v0, v4, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 179
    :goto_2
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasText:Landroid/widget/EditText;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$5;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$5;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 192
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 194
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v4, v1, v2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 196
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->mAuthorityAliasText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 198
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 259
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->hideKeyboard()V

    .line 261
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    const/4 v1, 0x6

    if-ne v1, v2, :cond_0

    .line 285
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AlertDialog;

    const/4 v2, -0x1

    .line 286
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;--->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStart()V
    .locals 5

    move-object/16 v2, p0

    .line 216
    invoke-super {v2}, Landroid/support/v4/app/DialogFragment;->onStart()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;--->onStart()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 219
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 220
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$6;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment$6;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditSmartPGPAuthorityDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
