.class public Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;
.super Landroid/support/v4/app/Fragment;
.source "CreateKeyEmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;
    }
.end annotation


# instance fields
.field private mAdditionalEmailModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

.field private mEmailAdapter:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;

.field private mEmailEdit:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 49
    invoke-direct {v1}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mAdditionalEmailModels:Ljava/util/ArrayList;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;Ljava/lang/String;Z)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->checkEmail(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;)Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailAdapter:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;

    return-object p0
.end method

.method private addEmail()V
    .locals 6

    move-object/16 v3, p0

    .line 161
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$1;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;)V

    .line 177
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 179
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;->newInstance(Landroid/os/Messenger;)Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;

    move-result-object v0

    .line 180
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addEmailDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->addEmail()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkEmail(Ljava/lang/String;Z)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xdac

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f1100da

    .line 126
    invoke-virtual {v3, v5}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 125
    invoke-static {v4, v5, v2, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    .line 127
    invoke-interface {v4, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return v1

    :cond_0
    if-nez v5, :cond_1

    .line 132
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->isEmailDuplicatedInsideAdapter(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz v5, :cond_3

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailEdit:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    .line 133
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailEdit:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    :cond_2
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f1100d9

    .line 135
    invoke-virtual {v3, v5}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    .line 134
    invoke-static {v4, v5, v2, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    .line 136
    invoke-interface {v4, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return v1

    :cond_3
    const/4 v4, 0x1

    return v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->checkEmail(Ljava/lang/String;Z)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getAdditionalEmails()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mAdditionalEmailModels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;

    .line 227
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->getAdditionalEmails()Ljava/util/ArrayList;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private hideKeyboard()V
    .locals 6

    move-object/16 v3, p0

    .line 210
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    .line 214
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 217
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 221
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->hideKeyboard()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isEmailDuplicatedInsideAdapter(Ljava/lang/String;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 148
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mAdditionalEmailModels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;

    .line 149
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter$ViewModel;->email:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->isEmailDuplicatedInsideAdapter(Ljava/lang/String;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isMainEmailValid(Landroid/widget/EditText;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 74
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f1100dc

    .line 75
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    return v1

    .line 78
    :cond_0
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->checkEmail(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 81
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->isMainEmailValid(Landroid/widget/EditText;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;
    .locals 5

    .line 59
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private nextClicked()V
    .locals 6

    move-object/16 v3, p0

    .line 190
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailEdit:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->isMainEmailValid(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailEdit:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mEmail:Ljava/lang/String;

    .line 193
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getAdditionalEmails()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    .line 197
    iget-boolean v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mCreateSecurityToken:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->hideKeyboard()V

    .line 200
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;

    move-result-object v0

    .line 201
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    move-result-object v0

    .line 204
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    :cond_1
    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->nextClicked()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$onCreateView$0$CreateKeyEmailFragment(Landroid/view/View;)V
    .locals 2

    .line 101
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_LEFT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$CreateKeyEmailFragment(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->nextClicked()V

    return-void
.end method

.method final synthetic lambda$onCreateView$2$CreateKeyEmailFragment(Landroid/view/View;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->addEmail()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 185
    invoke-super {v0, v1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->onAttach(Landroid/app/Activity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    const p0, 0x7f0c003f

    const/4 v0, 0x0

    .line 87
    invoke-virtual {v4, p0, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0900f8

    .line 89
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    iput-object v5, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailEdit:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    const v5, 0x7f0900f3

    .line 90
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const p0, 0x7f0900ff

    .line 91
    invoke-virtual {v4, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0900fb

    .line 92
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 95
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailEdit:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mEmail:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 99
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailEdit:Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->requestFocus()Z

    .line 101
    :cond_0
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$$Lambda$0;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$$Lambda$1;

    invoke-direct {v5, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x1

    .line 103
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 104
    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v5, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 105
    new-instance v5, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 107
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailAdapter:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;

    if-nez v5, :cond_1

    .line 108
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;

    iget-object p0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mAdditionalEmailModels:Ljava/util/ArrayList;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$$Lambda$2;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;)V

    invoke-direct {v5, p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v5, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailAdapter:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;

    .line 110
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 111
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailAdapter:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;

    iget-object p0, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    invoke-static {v5, p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;Ljava/util/ArrayList;)V

    .line 115
    :cond_1
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mEmailAdapter:Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment$EmailAdapter;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 234
    invoke-super {v1, v2}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyEmailFragment;->getAdditionalEmails()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mAdditionalEmails:Ljava/util/ArrayList;

    return-void
.end method
