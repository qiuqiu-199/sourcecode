.class public Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;
.super Ledu/cmu/cylab/starslinger/exchange/BaseActivity;
.source "GroupingActivity.java"


# instance fields
.field private mButtonOk:Landroid/widget/Button;

.field private mEditTextPrompt:Landroid/widget/EditText;

.field private mInputMgr:Landroid/view/inputmethod/InputMethodManager;

.field private mNumUsers:I

.field private mTextViewCompareNDevices:Landroid/widget/TextView;

.field private mTextViewInstruct:Landroid/widget/TextView;

.field private mTextViewUserId:Landroid/widget/TextView;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)Landroid/widget/EditText;
    .locals 0

    .line 47
    iget-object p0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mEditTextPrompt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 47
    iget-object p0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private showHelp()V
    .locals 2

    .line 210
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->title_userid:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->help_userid:I

    invoke-virtual {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->showHelp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 203
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mEditTextPrompt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 206
    :cond_0
    invoke-super {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const v0, 0x1030119

    .line 85
    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x103000c

    .line 87
    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->setTheme(I)V

    .line 89
    :goto_0
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 92
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 94
    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->lib_name:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 95
    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->title_userid:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(I)V

    goto :goto_1

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->lib_name:I

    invoke-virtual {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->title_userid:I

    invoke-virtual {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    :goto_1
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$layout;->sse__promptdialog:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->setContentView(I)V

    .line 102
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$id;->PromptButtonOK:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mButtonOk:Landroid/widget/Button;

    .line 103
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$id;->TextViewCompareNDevices:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mTextViewCompareNDevices:Landroid/widget/TextView;

    .line 104
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$id;->PromptTextViewInstruct:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mTextViewInstruct:Landroid/widget/TextView;

    .line 105
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$id;->PromptTextViewUserId:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mTextViewUserId:Landroid/widget/TextView;

    .line 106
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$id;->PromptEditText:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mEditTextPrompt:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    goto :goto_2

    .line 108
    :cond_2
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_3

    const-string v0, "UserId"

    .line 110
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mUserId:I

    const-string v0, "NumUsers"

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mNumUsers:I

    .line 115
    :cond_3
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mUserId:I

    if-gtz p1, :cond_4

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VerifyActivity mUserId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->finishInvalidBundle(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_4
    iget p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mNumUsers:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_5

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VerifyActivity mNumUsers="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mNumUsers:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->finishInvalidBundle(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_5
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mTextViewUserId:Landroid/widget/TextView;

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mTextViewCompareNDevices:Landroid/widget/TextView;

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->label_CompareScreensNDevices:I

    .line 127
    invoke-virtual {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mNumUsers:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 126
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mTextViewInstruct:Landroid/widget/TextView;

    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->label_PromptInstruct:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mEditTextPrompt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mButtonOk:Landroid/widget/Button;

    new-instance v1, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$1;

    invoke-direct {v1, p0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$1;-><init>(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mEditTextPrompt:Landroid/widget/EditText;

    new-instance v1, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$2;

    invoke-direct {v1, p0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity$2;-><init>(Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const-string p1, "input_method"

    .line 164
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    .line 165
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 169
    invoke-virtual {p0, v2}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "prefAutoShowHelp"

    .line 170
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->showHelp()V

    .line 173
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "prefAutoShowHelp"

    .line 174
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 187
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 183
    :cond_0
    invoke-static {p0, p2}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->xshowHelp(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "Help"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x1080040

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    .line 65
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 72
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 79
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 74
    :cond_0
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->showHelp()V

    return v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 192
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mUserId:I

    if-lez v0, :cond_0

    const-string v0, "UserId"

    .line 193
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    :cond_0
    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mNumUsers:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const-string v0, "NumUsers"

    .line 196
    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;->mNumUsers:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    :cond_1
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
