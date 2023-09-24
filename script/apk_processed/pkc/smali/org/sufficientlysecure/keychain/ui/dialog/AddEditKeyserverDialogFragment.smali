.class public Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AddEditKeyserverDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;,
        Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;
    }
.end annotation


# static fields
.field private static final ARG_ACTION:Ljava/lang/String; = "arg_dialog_action"

.field private static final ARG_KEYSERVER:Ljava/lang/String; = "arg_keyserver"

.field private static final ARG_MESSENGER:Ljava/lang/String; = "arg_messenger"

.field private static final ARG_POSITION:Ljava/lang/String; = "arg_position"

.field public static final MESSAGE_DIALOG_ACTION:Ljava/lang/String; = "message_dialog_action"

.field public static final MESSAGE_EDIT_POSITION:Ljava/lang/String; = "keyserver_edited_position"

.field public static final MESSAGE_KEYSERVER:Ljava/lang/String; = "new_keyserver"

.field public static final MESSAGE_KEYSERVER_DELETED:Ljava/lang/String; = "keyserver_deleted"

.field public static final MESSAGE_OKAY:I = 0x1

.field public static final MESSAGE_VERIFIED:Ljava/lang/String; = "verified"


# instance fields
.field private mDialogAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

.field private mKeyserverEditOnionText:Landroid/widget/EditText;

.field private mKeyserverEditOnionTextLayout:Landroid/support/design/widget/TextInputLayout;

.field private mKeyserverEditText:Landroid/widget/EditText;

.field private mKeyserverEditTextLayout:Landroid/support/design/widget/TextInputLayout;

.field private mMessenger:Landroid/os/Messenger;

.field private mOnlyTrustedKeyserverCheckBox:Landroid/widget/CheckBox;

.field private mPosition:I

.field private mVerifyKeyserverCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 64
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mOnlyTrustedKeyserverCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mPosition:I

    return p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditTextLayout:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditOnionTextLayout:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditOnionText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mVerifyKeyserverCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$700(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->verifyKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    move-result-object p0

    return-object p0
.end method

.method private hideKeyboard()V
    .locals 6

    move-object/16 v3, p0

    .line 409
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    .line 413
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 416
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 420
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->hideKeyboard()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Landroid/os/Messenger;Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move/16 p0, p3

    .line 105
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;-><init>()V

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_messenger"

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "arg_dialog_action"

    .line 108
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "arg_keyserver"

    .line 109
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "arg_position"

    .line 110
    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->newInstance(Landroid/os/Messenger;Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 444
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 445
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    if-eqz v3, :cond_0

    .line 447
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    const/4 v2, 0x0

    .line 451
    :try_start_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v0, "Messenger is null!"

    .line 455
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v0, "Exception sending message, Is handler present?"

    .line 453
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private verifyKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move/16 p0, p3

    .line 364
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->GOOD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    const/4 v1, 0x0

    .line 366
    :try_start_0
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrlURI()Ljava/net/URI;

    move-result-object v2

    .line 369
    new-instance v3, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;-><init>(Ljava/net/URL;)V

    .line 370
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/network/TlsCertificatePinning;->isPinAvailable()Z

    move-result v3

    if-eqz p0, :cond_0

    if-nez v3, :cond_0

    const-string v6, "No pinned certificate for this host in OpenKeychain\'s assets."

    .line 372
    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    sget-object v6, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->NO_PINNED_CERTIFICATE:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    return-object v6

    .line 378
    :cond_0
    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    .line 377
    invoke-static {p0, v3}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;)Lokhttv8/OkHttpClient;

    move-result-object p0

    .line 379
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Ljava/net/URL;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {p0, v2}, Lokhttv8/OkHttpClient;->newCall(Lokhttv8/Request;)Lokhttv8/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttv8/Call;->execute()Lokhttv8/Response;

    .line 382
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->isTorEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 383
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getOnionURI()Ljava/net/URI;

    move-result-object v6

    .line 386
    invoke-virtual {v6}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v7

    .line 385
    invoke-static {p0, v7}, Lorg/sufficientlysecure/keychain/network/OkHttpClientFactory;->getClientPinnedIfAvailable(Ljava/net/URL;Ljava/net/Proxy;)Lokhttv8/OkHttpClient;

    move-result-object v7

    .line 387
    new-instance p0, Lokhttv8/Request$Builder;

    invoke-direct {p0}, Lokhttv8/Request$Builder;-><init>()V

    invoke-virtual {v6}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {p0, v6}, Lokhttv8/Request$Builder;->url(Ljava/net/URL;)Lokhttv8/Request$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v7, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v6, "Could not connect to entered keyserver url"

    .line 393
    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->CONNECTION_FAILED:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    goto :goto_0

    :catch_1
    const-string v6, "Invalid keyserver URL entered by user."

    .line 390
    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->INVALID_URL:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;

    :cond_1
    :goto_0
    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->verifyKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public deleteKeyserver(I)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 300
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->dismiss()V

    .line 301
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message_dialog_action"

    .line 302
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->EDIT:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "keyserver_edited_position"

    .line 303
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "keyserver_deleted"

    const/4 v1, 0x1

    .line 304
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->deleteKeyserver(I)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public keyserverEdited(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Z)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 286
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->dismiss()V

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message_dialog_action"

    .line 288
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mDialogAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "new_keyserver"

    .line 289
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "verified"

    .line 290
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mDialogAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    sget-object v5, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->EDIT:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    if-ne v4, v5, :cond_0

    const-string v4, "keyserver_edited_position"

    .line 293
    iget v5, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mPosition:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/4 v4, 0x1

    .line 296
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->sendMessageToHandler(Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->keyserverEdited(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 120
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 122
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_messenger"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mMessenger:Landroid/os/Messenger;

    .line 123
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_dialog_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mDialogAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    .line 124
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mPosition:I

    .line 126
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v1, 0x7f0c001c

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 130
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0901bf

    .line 132
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditText:Landroid/widget/EditText;

    const v1, 0x7f0901c0

    .line 133
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputLayout;

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditTextLayout:Landroid/support/design/widget/TextInputLayout;

    const v1, 0x7f0901b7

    .line 134
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditOnionText:Landroid/widget/EditText;

    const v1, 0x7f0901b8

    .line 135
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TextInputLayout;

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditOnionTextLayout:Landroid/support/design/widget/TextInputLayout;

    const v1, 0x7f090361

    .line 136
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mVerifyKeyserverCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f090260

    .line 137
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mOnlyTrustedKeyserverCheckBox:Landroid/widget/CheckBox;

    .line 138
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mVerifyKeyserverCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$1;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)V

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$DialogAction:[I

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mDialogAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->ordinal()I

    move-result v1

    aget v4, v4, v1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v4, 0x7f11014e

    .line 151
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v1, "arg_keyserver"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 153
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditOnionText:Landroid/widget/EditText;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getOnion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const v4, 0x7f110024

    .line 147
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 161
    :goto_0
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$2;

    invoke-direct {v4, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)V

    const v1, 0x104000a

    invoke-virtual {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    .line 170
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$3;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)V

    invoke-virtual {v0, v4, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 178
    sget-object v4, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$DialogAction:[I

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mDialogAction:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->ordinal()I

    move-result v2

    aget v4, v4, v2

    const/4 v2, 0x2

    if-eq v4, v2, :cond_0

    goto :goto_1

    :cond_0
    const v4, 0x7f1108b1

    .line 180
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$4;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)V

    invoke-virtual {v0, v4, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 200
    :goto_1
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditText:Landroid/widget/EditText;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$5;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 213
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 215
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v4, v1, v2}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 217
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 219
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 402
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->hideKeyboard()V

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

    .line 429
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AlertDialog;

    const/4 v2, -0x1

    .line 430
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStart()V
    .locals 5

    move-object/16 v2, p0

    .line 224
    invoke-super {v2}, Landroid/support/v4/app/DialogFragment;->onStart()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->onStart()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 227
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 228
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$6;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public verificationFailed(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 310
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$8;->$SwitchMap$org$sufficientlysecure$keychain$ui$dialog$AddEditKeyserverDialogFragment$VerifyReturn:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;->ordinal()I

    move-result v2

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditTextLayout:Landroid/support/design/widget/TextInputLayout;

    const v0, 0x7f110026

    .line 323
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditTextLayout:Landroid/support/design/widget/TextInputLayout;

    const v0, 0x7f110025

    .line 318
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 312
    :pswitch_2
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->mKeyserverEditTextLayout:Landroid/support/design/widget/TextInputLayout;

    const v0, 0x7f110022

    .line 313
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->verificationFailed(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$VerifyReturn;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verifyConnection(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move/16 p0, p3

    .line 332
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;

    invoke-direct {v0, v1, v3, p0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    const/4 p0, 0x0

    aput-object v2, v3, p0

    .line 360
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;--->verifyConnection(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
