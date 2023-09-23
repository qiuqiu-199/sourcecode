.class public Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AddSubkeyDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$TwoLineArrayAdapter;,
        Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;,
        Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;
    }
.end annotation


# static fields
.field private static final ARG_WILL_BE_MASTER_KEY:Ljava/lang/String; = "will_be_master_key"


# instance fields
.field private mAlgorithmSelectedListener:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;

.field private mExpiryDatePicker:Landroid/widget/DatePicker;

.field private mExpiryRow:Landroid/widget/TableRow;

.field private mKeyTypeSpinner:Landroid/widget/Spinner;

.field private mNoExpiryCheckBox:Landroid/widget/CheckBox;

.field private mUsageAuthentication:Landroid/widget/RadioButton;

.field private mUsageEncrypt:Landroid/widget/RadioButton;

.field private mUsageNone:Landroid/widget/RadioButton;

.field private mUsageRadioGroup:Landroid/widget/RadioGroup;

.field private mUsageSign:Landroid/widget/RadioButton;

.field private mUsageSignAndEncrypt:Landroid/widget/RadioButton;

.field private mWillBeMasterKey:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 58
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/TableRow;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mExpiryRow:Landroid/widget/TableRow;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioGroup;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/DatePicker;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mExpiryDatePicker:Landroid/widget/DatePicker;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mAlgorithmSelectedListener:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mWillBeMasterKey:Z

    return p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageNone:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageSignAndEncrypt:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageEncrypt:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/Spinner;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mKeyTypeSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$700(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageSign:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$800(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/RadioButton;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageAuthentication:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$900(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mNoExpiryCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static newInstance(Z)Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;
    .locals 6

    move/16 v3, p0

    .line 90
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "will_be_master_key"

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;--->newInstance(Z)Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    .line 104
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    .line 107
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "will_be_master_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mWillBeMasterKey:Z

    .line 108
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v1, v11}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const v3, 0x7f0c001e

    .line 113
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f090038

    .line 116
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mNoExpiryCheckBox:Landroid/widget/CheckBox;

    const v3, 0x7f090037

    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    iput-object v3, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mExpiryRow:Landroid/widget/TableRow;

    const v3, 0x7f090036

    .line 118
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mExpiryDatePicker:Landroid/widget/DatePicker;

    const v3, 0x7f090039

    .line 119
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mKeyTypeSpinner:Landroid/widget/Spinner;

    const v3, 0x7f09003c

    .line 120
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f09003d

    .line 121
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageNone:Landroid/widget/RadioButton;

    const v3, 0x7f09003e

    .line 122
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageSign:Landroid/widget/RadioButton;

    const v3, 0x7f09003b

    .line 123
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageEncrypt:Landroid/widget/RadioButton;

    const v3, 0x7f09003f

    .line 124
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageSignAndEncrypt:Landroid/widget/RadioButton;

    const v3, 0x7f09003a

    .line 125
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageAuthentication:Landroid/widget/RadioButton;

    .line 127
    iget-boolean v0, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mWillBeMasterKey:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f110cdc

    .line 128
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 129
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageNone:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 130
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mUsageNone:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const v0, 0x7f110cd6

    .line 132
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 135
    :goto_0
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mNoExpiryCheckBox:Landroid/widget/CheckBox;

    new-instance v5, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$1;

    invoke-direct {v5, v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x6

    .line 148
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 149
    iget-object v5, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mExpiryDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->RSA_2048:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110c4d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f110c4e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->RSA_3072:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110c4f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f110c50

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->RSA_4096:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110c51

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 158
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f110c52

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ECC_P256:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f11013a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f11013b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->ECC_P521:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f11013e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 162
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f11013f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v5, Lorg/sufficientlysecure/keychain/util/Choice;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->EDDSA:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f110138

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f110139

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/sufficientlysecure/keychain/util/Choice;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$TwoLineArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v5, v10, v11, v6, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$TwoLineArrayAdapter;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 167
    iget-object v11, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 169
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 170
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/sufficientlysecure/keychain/util/Choice;

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/util/Choice;->getId()Ljava/lang/Object;

    move-result-object v11

    sget-object v5, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;->RSA_3072:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$SupportedKeyType;

    if-ne v11, v5, :cond_1

    .line 171
    iget-object v11, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 177
    :cond_2
    :goto_2
    invoke-virtual {v1, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    const v11, 0x104000a

    .line 180
    invoke-virtual {v1, v11, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/high16 v11, 0x1040000

    .line 181
    invoke-virtual {v1, v11, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v11

    .line 185
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mKeyTypeSpinner:Landroid/widget/Spinner;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;

    invoke-direct {v1, v10}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v11

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStart()V
    .locals 6

    move-object/16 v3, p0

    .line 224
    invoke-super {v3}, Landroid/support/v4/app/DialogFragment;->onStart()V

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;--->onStart()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 227
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, -0x2

    .line 228
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 229
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$4;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnAlgorithmSelectedListener(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 86
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->mAlgorithmSelectedListener:Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;--->setOnAlgorithmSelectedListener(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
