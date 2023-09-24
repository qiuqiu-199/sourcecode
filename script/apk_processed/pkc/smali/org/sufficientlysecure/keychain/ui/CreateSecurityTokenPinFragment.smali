.class public Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;
.super Landroid/support/v4/app/Fragment;
.source "CreateSecurityTokenPinFragment.java"


# static fields
.field private static sPinBlacklist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAdminPin:Landroid/widget/TextView;

.field mBackButton:Landroid/view/View;

.field mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

.field mNextButton:Landroid/view/View;

.field mPin:Landroid/widget/EditText;

.field mPinRepeat:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 53
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "123456"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "111111"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "000000"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "121212"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "777777"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "200000"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "444444"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "222222"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "696969"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "999999"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "333333"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "555555"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "666666"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "111222"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "131313"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "888888"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "654321"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string v2, "200001"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string v2, "101010"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string v2, "XXXXXX"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->sPinBlacklist:Ljava/util/HashSet;

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;---><clinit>()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 41
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->back()V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->nextClicked()V

    return-void
.end method

.method private static areEditTextsEqual(Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 109
    new-instance v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Landroid/widget/EditText;)V

    .line 110
    new-instance v1, Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Landroid/widget/EditText;)V

    .line 111
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;--->areEditTextsEqual(Landroid/widget/EditText;Landroid/widget/EditText;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private back()V
    .locals 6

    move-object/16 v3, p0

    .line 181
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->hideKeyboard()V

    .line 182
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_LEFT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;--->back()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private hideKeyboard()V
    .locals 6

    move-object/16 v3, p0

    .line 222
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    .line 226
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 229
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 233
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;--->hideKeyboard()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static isEditTextNotEmpty(Landroid/content/Context;Landroid/widget/EditText;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 97
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1100dc

    .line 98
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 102
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;--->isEditTextNotEmpty(Landroid/content/Context;Landroid/widget/EditText;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;
    .locals 5

    .line 81
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;-><init>()V

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 84
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private nextClicked()V
    .locals 8

    move-object/16 v5, p0

    .line 186
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->isEditTextNotEmpty(Landroid/content/Context;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPinRepeat:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->areEditTextsEqual(Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPinRepeat:Landroid/widget/EditText;

    const v1, 0x7f1100e3

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPinRepeat:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 194
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 195
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    const v1, 0x7f1100f1

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 200
    :cond_1
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->sPinBlacklist:Ljava/util/HashSet;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    const v1, 0x7f1100ed

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 206
    :cond_2
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    new-instance v1, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 208
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getOpenPgpVersion()D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3

    .line 212
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_3
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    move-result-object v0

    .line 216
    :goto_0
    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->hideKeyboard()V

    .line 217
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    :cond_4
    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;--->nextClicked()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 176
    invoke-super {v0, v1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;--->onAttach(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const/4 p0, 0x0

    const v0, 0x7f0c0049

    .line 116
    invoke-virtual {v2, v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090107

    .line 118
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    const v3, 0x7f090108

    .line 119
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPinRepeat:Landroid/widget/EditText;

    const v3, 0x7f090106

    .line 120
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mAdminPin:Landroid/widget/TextView;

    const v3, 0x7f0900f3

    .line 121
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mBackButton:Landroid/view/View;

    const v3, 0x7f0900ff

    .line 122
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mNextButton:Landroid/view/View;

    .line 124
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v3, :cond_0

    .line 125
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;

    invoke-direct {v3, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;)V

    new-array p0, p0, [Ljava/lang/Void;

    .line 152
    invoke-virtual {v3, p0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 154
    :cond_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mAdminPin:Landroid/widget/TextView;

    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenAdminPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->toStringUnsafe()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mPin:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 158
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mBackButton:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$2;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;->mNextButton:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$3;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenPinFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
