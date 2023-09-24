.class public Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;
.super Landroid/support/v4/app/Fragment;
.source "CreateSecurityTokenAlgorithmFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$TwoLineArrayAdapter;,
        Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;
    }
.end annotation


# instance fields
.field private mAuthKeySpinner:Landroid/widget/Spinner;

.field private mBackButton:Landroid/view/View;

.field private mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

.field private mDecKeySpinner:Landroid/widget/Spinner;

.field private mNextButton:Landroid/view/View;

.field private mSignKeySpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 42
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->back()V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->nextClicked()V

    return-void
.end method

.method private back()V
    .locals 6

    move-object/16 v3, p0

    .line 149
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_LEFT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;--->back()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;
    .locals 5

    .line 61
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private nextClicked()V
    .locals 7

    move-object/16 v4, p0

    .line 153
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mSignKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/util/Choice;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Choice;->getId()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->fromCreationKeyType(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;Z)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenSign:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 154
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mDecKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/util/Choice;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Choice;->getId()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->fromCreationKeyType(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;Z)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenDec:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 155
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mAuthKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/util/Choice;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Choice;->getId()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->fromCreationKeyType(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;Z)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mSecurityTokenAuth:Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    .line 157
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyFinalFragment;

    move-result-object v0

    .line 158
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;--->nextClicked()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 144
    invoke-super {v0, v1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;--->onAttach(Landroid/app/Activity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    move-object/16 p0, p3

    .line 71
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7f0c0048

    .line 72
    invoke-virtual {v11, v1, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0900f3

    .line 74
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mBackButton:Landroid/view/View;

    const v12, 0x7f0900ff

    .line 75
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mNextButton:Landroid/view/View;

    .line 77
    iget-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mBackButton:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$1;

    invoke-direct {v1, v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mNextButton:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$2;

    invoke-direct {v1, v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f090105

    .line 90
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mSignKeySpinner:Landroid/widget/Spinner;

    const v12, 0x7f090104

    .line 91
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mDecKeySpinner:Landroid/widget/Spinner;

    const v12, 0x7f090103

    .line 92
    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    iput-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mAuthKeySpinner:Landroid/widget/Spinner;

    .line 94
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->RSA_2048:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110c4d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110c4e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->RSA_3072:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110c4f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110c50

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->RSA_4096:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110c51

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110c52

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getOpenPgpVersion()D

    move-result-wide v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_0

    .line 106
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ECC_P256:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f11013a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f11013b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ECC_P384:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f11013c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f11013d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ECC_P521:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f11013e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f11013f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$TwoLineArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v5, v10, p0, v6, v12}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$TwoLineArrayAdapter;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 116
    iget-object p0, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mSignKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 117
    iget-object p0, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mDecKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 118
    iget-object p0, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mAuthKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 121
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v0, p0, :cond_3

    cmpl-double p0, v1, v3

    if-ltz p0, :cond_1

    .line 123
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/util/Choice;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/util/Choice;->getId()Ljava/lang/Object;

    move-result-object p0

    sget-object v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ECC_P256:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    if-ne p0, v5, :cond_2

    .line 124
    iget-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mSignKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 125
    iget-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mDecKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 126
    iget-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mAuthKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/sufficientlysecure/keychain/util/Choice;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/util/Choice;->getId()Ljava/lang/Object;

    move-result-object p0

    sget-object v5, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->RSA_2048:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    if-ne p0, v5, :cond_2

    .line 131
    iget-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mSignKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 132
    iget-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mDecKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 133
    iget-object v12, v10, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;->mAuthKeySpinner:Landroid/widget/Spinner;

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v11

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
