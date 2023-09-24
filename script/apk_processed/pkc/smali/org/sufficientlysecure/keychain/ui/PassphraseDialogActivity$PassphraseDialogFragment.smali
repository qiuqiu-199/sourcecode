.class public Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PassphraseDialogActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassphraseDialogFragment"
.end annotation


# instance fields
.field private mBackupCodeEditText:[Landroid/widget/EditText;

.field private mIsCancelled:Z

.field private mLayout:Landroid/widget/ViewAnimator;

.field private mPassphraseEditText:Landroid/widget/EditText;

.field private mPassphraseText:Landroid/widget/TextView;

.field private mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

.field private mTimeToLiveSpinner:Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 157
    invoke-direct {v1}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mIsCancelled:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/widget/ImageButton;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->setKeyboardAlphabetic(Landroid/widget/ImageButton;)V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/widget/ImageButton;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->setKeyboardNumeric(Landroid/widget/ImageButton;)V

    return-void
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)[Landroid/widget/EditText;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->finishCaching(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Landroid/widget/EditText;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mTimeToLiveSpinner:Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;

    return-object p0
.end method

.method static synthetic access$700(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/widget/Button;Lorg/sufficientlysecure/keychain/util/Passphrase;I)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->checkPassphraseAndFinishCaching(Landroid/widget/Button;Lorg/sufficientlysecure/keychain/util/Passphrase;I)V

    return-void
.end method

.method static synthetic access$800(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mIsCancelled:Z

    return p0
.end method

.method static synthetic access$900(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)Landroid/widget/ViewAnimator;
    .locals 0

    .line 157
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mLayout:Landroid/widget/ViewAnimator;

    return-object p0
.end method

.method private checkPassphraseAndFinishCaching(Landroid/widget/Button;Lorg/sufficientlysecure/keychain/util/Passphrase;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    .line 520
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mLayout:Landroid/widget/ViewAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    const/4 v0, 0x0

    .line 521
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 523
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;

    invoke-direct {v1, v2, v4, v3, p0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;-><init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Lorg/sufficientlysecure/keychain/util/Passphrase;Landroid/widget/Button;I)V

    new-array v3, v0, [Ljava/lang/Void;

    .line 603
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->checkPassphraseAndFinishCaching(Landroid/widget/Button;Lorg/sufficientlysecure/keychain/util/Passphrase;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private finishCaching(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 608
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mIsCancelled:Z

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "crypto_input"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 614
    invoke-virtual {v0, v3, v4}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v3

    .line 616
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->handleResult(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    .line 618
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->dismiss()V

    .line 619
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    :cond_1
    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->finishCaching(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private hideKeyboard()V
    .locals 6

    move-object/16 v3, p0

    .line 641
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 645
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    .line 646
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 648
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->hideKeyboard()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private openKeyboard(Landroid/widget/TextView;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 401
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/widget/TextView;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 417
    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->openKeyboard(Landroid/widget/TextView;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setKeyboardAlphabetic(Landroid/widget/ImageButton;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 385
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 387
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const v0, 0x7f0800ca

    .line 388
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v0, 0x7f110bd3

    .line 389
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->setKeyboardAlphabetic(Landroid/widget/ImageButton;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setKeyboardNumeric(Landroid/widget/ImageButton;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 377
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 379
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const v0, 0x7f08008e

    .line 380
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v0, 0x7f110bd2

    .line 381
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->setKeyboardNumeric(Landroid/widget/ImageButton;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static setupEditTextFocusNext([Landroid/widget/EditText;Z)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    const/4 v0, 0x0

    .line 421
    :goto_0
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 424
    aget-object v1, v3, v0

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;

    invoke-direct {v2, v4, v0, v3}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$4;-><init>(ZI[Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->setupEditTextFocusNext([Landroid/widget/EditText;Z)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$onCreateDialog$0$PassphraseDialogActivity$PassphraseDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 322
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->dismiss()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 624
    invoke-super {v1, v2}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->onCancel(Landroid/content/DialogInterface;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 627
    iput-boolean v2, v1, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mIsCancelled:Z

    .line 629
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 630
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 20

    move-object/16 v17, p0

    move-object/16 v18, p1

    move-object/from16 v0, v17

    .line 171
    invoke-virtual/range {v17 .. v17}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v2

    .line 175
    invoke-virtual/range {v17 .. v17}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "required_input"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iput-object v3, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 177
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v3, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 182
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->BACKUP_CODE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const v6, 0x7f110084

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ne v4, v5, :cond_0

    .line 183
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c00d4

    .line 184
    invoke-virtual {v2, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 185
    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 187
    new-array v4, v12, [Landroid/widget/EditText;

    iput-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    .line 188
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090060

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v4, v15

    .line 189
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090061

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v4, v14

    .line 190
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090062

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v4, v9

    .line 191
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090063

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v4, v8

    .line 192
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090064

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v4, v11

    .line 193
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090065

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v4, v7

    .line 195
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    invoke-static {v2, v15}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->setupEditTextFocusNext([Landroid/widget/EditText;Z)V

    .line 197
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v13, Landroid/content/DialogInterface$OnClickListener;

    .line 198
    invoke-virtual {v2, v10, v1, v13}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v2

    .line 203
    :cond_0
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const v7, 0x7f09026d

    if-eq v4, v5, :cond_9

    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4_AUTOCRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-ne v4, v5, :cond_1

    goto/16 :goto_6

    .line 246
    :cond_1
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c00d3

    .line 247
    invoke-virtual {v2, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewAnimator;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mLayout:Landroid/widget/ViewAnimator;

    .line 248
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mLayout:Landroid/widget/ViewAnimator;

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 250
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mLayout:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v7}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseText:Landroid/widget/TextView;

    .line 251
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mLayout:Landroid/widget/ViewAnimator;

    const v4, 0x7f09026b

    invoke-virtual {v2, v4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    .line 253
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mLayout:Landroid/widget/ViewAnimator;

    const v4, 0x7f09027f

    invoke-virtual {v2, v4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 254
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-boolean v4, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSkipCaching:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mLayout:Landroid/widget/ViewAnimator;

    const v4, 0x7f09034c

    invoke-virtual {v2, v4}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mTimeToLiveSpinner:Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;

    .line 257
    invoke-virtual/range {v17 .. v17}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getCacheTtlSeconds()I

    move-result v2

    .line 258
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mTimeToLiveSpinner:Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;

    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->setSelectedTimeToLive(I)V

    const/high16 v2, 0x1040000

    .line 260
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$1;

    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)V

    invoke-virtual {v3, v2, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 269
    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    .line 273
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE_SYMMETRIC:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const v7, 0x104000a

    const v8, 0x7f1108bb

    if-ne v4, v5, :cond_3

    const v4, 0x7f110bd0

    .line 274
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-virtual {v0, v8}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 278
    :cond_3
    :try_start_0
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyIds()[J

    move-result-object v4

    .line 279
    array-length v5, v4

    if-le v5, v14, :cond_4

    const v4, 0x7f110bce

    .line 280
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-virtual {v0, v8}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 283
    :cond_4
    aget-wide v10, v4, v15

    .line 285
    invoke-virtual/range {v17 .. v17}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v2

    .line 286
    invoke-virtual {v2, v10, v11}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v4

    .line 287
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v4

    if-nez v4, :cond_5

    .line 289
    new-instance v1, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;-><init>()V

    throw v1

    .line 294
    :cond_5
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id()Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v4

    .line 296
    iget-object v5, v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 297
    iget-object v4, v4, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const v4, 0x7f110d45

    .line 299
    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    :goto_1
    invoke-virtual {v2, v10, v11}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v2

    .line 303
    sget-object v5, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$1;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v9

    aget v5, v5, v9

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    .line 314
    :pswitch_0
    new-instance v1, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->finishCaching(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)V

    goto/16 :goto_5

    :pswitch_1
    const v5, 0x7f110c8f

    .line 309
    new-array v8, v14, [Ljava/lang/Object;

    aput-object v4, v8, v15

    invoke-virtual {v0, v5, v8}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1108be

    .line 310
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :pswitch_2
    const v5, 0x7f110bcd

    .line 305
    new-array v9, v14, [Ljava/lang/Object;

    aput-object v4, v9, v15

    invoke-virtual {v0, v5, v9}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-virtual {v0, v8}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_2
    iget-object v8, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseText:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->openKeyboard(Landroid/widget/TextView;)V

    .line 333
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v12}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 334
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 336
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mLayout:Landroid/widget/ViewAnimator;

    const v5, 0x7f090269

    invoke-virtual {v4, v5}, Landroid/widget/ViewAnimator;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 338
    sget-object v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v2, v5, :cond_8

    .line 339
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->useNumKeypadForSecurityTokenPin()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 340
    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->setKeyboardNumeric(Landroid/widget/ImageButton;)V

    goto :goto_3

    .line 342
    :cond_7
    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->setKeyboardAlphabetic(Landroid/widget/ImageButton;)V

    .line 345
    :goto_3
    invoke-virtual {v4, v15}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 346
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$2;

    invoke-direct {v2, v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/app/Activity;Landroid/widget/ImageButton;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 363
    :cond_8
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v2, 0x8

    .line 364
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 367
    :goto_4
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mPassphraseEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 369
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 371
    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v13, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x1

    .line 370
    invoke-virtual {v2, v3, v1, v13}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v2

    .line 316
    :goto_5
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Unhandled SecretKeyType (should not happen)"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const v1, 0x7f110ced

    .line 320
    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f110833

    .line 321
    new-array v2, v14, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v15

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 322
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$$Lambda$0;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;)V

    invoke-virtual {v3, v7, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 323
    invoke-virtual {v3, v15}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 205
    :cond_9
    :goto_6
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c00d5

    .line 206
    invoke-virtual {v2, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 207
    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const/16 v4, 0x9

    .line 209
    new-array v4, v4, [Landroid/widget/EditText;

    iput-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    .line 210
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090330

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v4, v15

    .line 211
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090331

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v4, v14

    .line 212
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090332

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v4, v9

    .line 213
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090333

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v4, v8

    .line 214
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090334

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 215
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090335

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 216
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090336

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v4, v12

    .line 217
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const/4 v5, 0x7

    const v6, 0x7f090337

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    aput-object v6, v4, v5

    .line 218
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    const v5, 0x7f090338

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const/16 v6, 0x8

    aput-object v5, v4, v6

    .line 220
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->hasPassphraseBegin()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 221
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getPassphraseBegin()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    rsub-int/lit8 v11, v5, 0x4

    .line 223
    iget-object v5, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    invoke-static {v5, v14}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->setupEditTextFocusNext([Landroid/widget/EditText;Z)V

    .line 225
    iget-object v5, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    aget-object v5, v5, v15

    check-cast v5, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;

    const-string v6, "\\d\\d"

    .line 226
    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 227
    invoke-virtual {v5, v4}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->setPrefix(Ljava/lang/CharSequence;)V

    const-string v4, "1234"

    .line 228
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 229
    new-array v4, v14, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v6, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v15

    invoke-virtual {v5, v4}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_7

    .line 232
    :cond_a
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mBackupCodeEditText:[Landroid/widget/EditText;

    invoke-static {v4, v15}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->setupEditTextFocusNext([Landroid/widget/EditText;Z)V

    .line 235
    :cond_b
    :goto_7
    iget-object v4, v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4_AUTOCRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-ne v4, v5, :cond_c

    .line 236
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f110bd7

    .line 237
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 240
    :cond_c
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f110079

    .line 242
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v13, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x1

    .line 241
    invoke-virtual {v2, v3, v1, v13}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v19, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 635
    invoke-super {v0, v1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->onDismiss(Landroid/content/DialogInterface;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->hideKeyboard()V

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

    .line 655
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AlertDialog;

    const/4 v2, -0x1

    .line 656
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 658
    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStart()V
    .locals 5

    move-object/16 v2, p0

    .line 449
    invoke-super {v2}, Landroid/support/v4/app/DialogFragment;->onStart()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;--->onStart()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 453
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment$5;-><init>(Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
