.class public Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;
.super Ledu/cmu/cylab/starslinger/exchange/BaseActivity;
.source "VerifyActivity.java"


# instance fields
.field private mButtonDiffer:Landroid/widget/Button;

.field private mButtonSame:Landroid/widget/Button;

.field private mCorrectButton:I

.field private mDataHash:[B

.field private mDecoy1Button:I

.field private mDecoy2Button:I

.field private mDecoyHash1:[B

.field private mDecoyHash2:[B

.field private mNumUsers:I

.field private mRadioPrimary1:Landroid/widget/RadioButton;

.field private mRadioPrimary2:Landroid/widget/RadioButton;

.field private mRadioPrimary3:Landroid/widget/RadioButton;

.field private mTextViewCompareNDevices:Landroid/widget/TextView;

.field private mTextViewSecondary1:Landroid/widget/TextView;

.field private mTextViewSecondary2:Landroid/widget/TextView;

.field private mTextViewSecondary3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 45
    iget-object p0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary1:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$100(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 45
    iget-object p0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary2:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$200(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 45
    iget-object p0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary3:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$300(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mCorrectButton:I

    return p0
.end method

.method static synthetic access$400(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoy1Button:I

    return p0
.end method

.method static synthetic access$500(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoy2Button:I

    return p0
.end method

.method private showHelp()V
    .locals 2

    .line 294
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->title_verify:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->help_verify:I

    invoke-virtual {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->showHelp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const v0, 0x1030119

    .line 96
    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x103000c

    .line 98
    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->setTheme(I)V

    .line 100
    :goto_0
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 103
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 105
    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->lib_name:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 106
    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->title_verify:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(I)V

    goto :goto_1

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->lib_name:I

    invoke-virtual {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->title_verify:I

    invoke-virtual {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :goto_1
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$layout;->sse__verifywords:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->setContentView(I)V

    if-eqz p1, :cond_2

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_3

    const-string v0, "FlagHash"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDataHash:[B

    const-string v0, "DecoyHash1"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash1:[B

    const-string v0, "DecoyHash2"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash2:[B

    const-string v0, "RandomPosition"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mCorrectButton:I

    const-string v0, "NumUsers"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mNumUsers:I

    .line 125
    :cond_3
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDataHash:[B

    if-eqz p1, :cond_13

    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDataHash:[B

    array-length p1, p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_4

    goto/16 :goto_b

    .line 129
    :cond_4
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash1:[B

    if-eqz p1, :cond_12

    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash1:[B

    array-length p1, p1

    if-ge p1, v0, :cond_5

    goto/16 :goto_a

    .line 133
    :cond_5
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash2:[B

    if-eqz p1, :cond_11

    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash2:[B

    array-length p1, p1

    if-ge p1, v0, :cond_6

    goto/16 :goto_9

    .line 137
    :cond_6
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mCorrectButton:I

    const/4 v1, 0x2

    if-le p1, v1, :cond_7

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VerifyActivity mCorrectButton="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mCorrectButton:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->finishInvalidBundle(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_7
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mNumUsers:I

    if-ge p1, v1, :cond_8

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VerifyActivity mNumUsers="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mNumUsers:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->finishInvalidBundle(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_8
    sget p1, Ledu/cmu/cylab/starslinger/exchange/R$id;->TextViewCompareNDevices:I

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewCompareNDevices:Landroid/widget/TextView;

    .line 147
    sget p1, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyButtonMatch:I

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mButtonSame:Landroid/widget/Button;

    .line 148
    sget p1, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyButtonDiffer:I

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mButtonDiffer:Landroid/widget/Button;

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "en"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 153
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewEnglishOne:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary1:Landroid/widget/RadioButton;

    .line 154
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewEnglishTwo:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary2:Landroid/widget/RadioButton;

    .line 155
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewEnglishThree:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary3:Landroid/widget/RadioButton;

    .line 156
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewNumbersOne:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary1:Landroid/widget/TextView;

    .line 157
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewNumbersTwo:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary2:Landroid/widget/TextView;

    .line 158
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewNumbersThree:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary3:Landroid/widget/TextView;

    goto :goto_3

    .line 160
    :cond_9
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewNumbersOne:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary1:Landroid/widget/RadioButton;

    .line 161
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewNumbersTwo:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary2:Landroid/widget/RadioButton;

    .line 162
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewNumbersThree:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary3:Landroid/widget/RadioButton;

    .line 163
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewEnglishOne:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary1:Landroid/widget/TextView;

    .line 164
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewEnglishTwo:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary2:Landroid/widget/TextView;

    .line 165
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$id;->VerifyTextViewEnglishThree:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary3:Landroid/widget/TextView;

    .line 168
    :goto_3
    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewCompareNDevices:Landroid/widget/TextView;

    sget v4, Ledu/cmu/cylab/starslinger/exchange/R$string;->label_CompareScreensNDevices:I

    .line 169
    invoke-virtual {p0, v4}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget v7, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mNumUsers:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 168
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-array v3, v0, [[B

    .line 173
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 174
    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextBoolean()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v0, :cond_e

    .line 179
    iget v8, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mCorrectButton:I

    if-ne v6, v8, :cond_a

    .line 181
    iget-object v8, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDataHash:[B

    aput-object v8, v3, v6

    goto :goto_7

    :cond_a
    if-eqz v7, :cond_c

    .line 185
    iput v6, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoy1Button:I

    if-eqz v4, :cond_b

    .line 186
    iget-object v8, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash1:[B

    goto :goto_5

    :cond_b
    iget-object v8, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash2:[B

    :goto_5
    aput-object v8, v3, v6

    goto :goto_7

    .line 189
    :cond_c
    iput v6, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoy2Button:I

    if-eqz v4, :cond_d

    .line 190
    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash2:[B

    goto :goto_6

    :cond_d
    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash1:[B

    :goto_6
    aput-object v7, v3, v6

    const/4 v7, 0x1

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_e
    if-eqz p1, :cond_f

    .line 198
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary1:Landroid/widget/RadioButton;

    aget-object v4, v3, v2

    invoke-static {v4, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getWordList([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary1:Landroid/widget/TextView;

    aget-object v4, v3, v2

    invoke-static {v4, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getNumbersList([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary2:Landroid/widget/RadioButton;

    aget-object v4, v3, v5

    invoke-static {v4, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getWordList([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary2:Landroid/widget/TextView;

    aget-object v4, v3, v5

    invoke-static {v4, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getNumbersList([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary3:Landroid/widget/RadioButton;

    aget-object v4, v3, v1

    invoke-static {v4, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getWordList([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary3:Landroid/widget/TextView;

    aget-object v1, v3, v1

    invoke-static {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getNumbersList([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 205
    :cond_f
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary1:Landroid/widget/RadioButton;

    aget-object v4, v3, v2

    invoke-static {v4, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getNumbersList([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary1:Landroid/widget/TextView;

    aget-object v4, v3, v2

    invoke-static {v4, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getWordList([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary2:Landroid/widget/RadioButton;

    aget-object v4, v3, v5

    invoke-static {v4, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getNumbersList([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary2:Landroid/widget/TextView;

    aget-object v4, v3, v5

    invoke-static {v4, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getWordList([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mRadioPrimary3:Landroid/widget/RadioButton;

    aget-object v4, v3, v1

    invoke-static {v4, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getNumbersList([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mTextViewSecondary3:Landroid/widget/TextView;

    aget-object v1, v3, v1

    invoke-static {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/WordList;->getWordList([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_8
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mButtonSame:Landroid/widget/Button;

    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;

    invoke-direct {v0, p0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$1;-><init>(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mButtonDiffer:Landroid/widget/Button;

    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$2;

    invoke-direct {v0, p0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity$2;-><init>(Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    invoke-virtual {p0, v2}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "prefAutoShowHelp"

    .line 253
    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 255
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->showHelp()V

    .line 256
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "prefAutoShowHelp"

    .line 257
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_10
    return-void

    .line 134
    :cond_11
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VerifyActivity mDecoyHash2="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash2:[B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->finishInvalidBundle(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_12
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VerifyActivity mDecoyHash1="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash1:[B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->finishInvalidBundle(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_13
    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VerifyActivity mDataHash="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDataHash:[B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->finishInvalidBundle(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 270
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 266
    :cond_0
    invoke-static {p0, p2}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->xshowHelp(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "Help"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x1080040

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    .line 75
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 89
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 84
    :cond_0
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->showHelp()V

    return v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 275
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDataHash:[B

    if-eqz v0, :cond_0

    const-string v0, "FlagHash"

    .line 276
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDataHash:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 278
    :cond_0
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash1:[B

    if-eqz v0, :cond_1

    const-string v0, "DecoyHash1"

    .line 279
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash1:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 281
    :cond_1
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash2:[B

    if-eqz v0, :cond_2

    const-string v0, "DecoyHash2"

    .line 282
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mDecoyHash2:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 284
    :cond_2
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mCorrectButton:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    const-string v0, "RandomPosition"

    .line 285
    iget v2, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mCorrectButton:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    :cond_3
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mNumUsers:I

    if-lt v0, v1, :cond_4

    const-string v0, "NumUsers"

    .line 288
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;->mNumUsers:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    :cond_4
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
