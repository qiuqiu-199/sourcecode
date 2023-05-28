.class public Lorg/inaturalist/android/LoginSignupActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LoginSignupActivity.java"

# interfaces
.implements Lorg/inaturalist/android/SignInTask$SignInTaskStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;
    }
.end annotation


# static fields
.field public static final BACKGROUND_ID:Ljava/lang/String; = "background_id"

.field public static final PASSWORD_CHANGED:Ljava/lang/String; = "password_changed"

.field private static final PERMISSIONS_REQUEST:I = 0x1000

.field public static final SIGNUP:Ljava/lang/String; = "signup"

.field private static TAG:Ljava/lang/String; = "LoginSignupActivity"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mBackgroundImage:Landroid/widget/ImageView;

.field private mCheckbox:Landroid/widget/ImageView;

.field private mCheckboxDescription:Landroid/widget/TextView;

.field private mEmail:Landroid/widget/EditText;

.field private mEmailIcon:Landroid/widget/ImageView;

.field private mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

.field private mForgotPassword:Landroid/widget/TextView;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mIsSignup:Z

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordChanged:Z

.field private mPasswordIcon:Landroid/widget/ImageView;

.field private mPasswordWarning:Landroid/widget/TextView;

.field private mSignInTask:Lorg/inaturalist/android/SignInTask;

.field private mSignup:Landroid/widget/Button;

.field private mTerms:Landroid/widget/TextView;

.field private mUseCCLicense:Z

.field private mUserRegisterReceiver:Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;

.field private mUsername:Landroid/widget/EditText;

.field private mUsernameIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUserRegisterReceiver:Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;

    return-object p0
.end method

.method static synthetic access$002(Lorg/inaturalist/android/LoginSignupActivity;Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;)Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUserRegisterReceiver:Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsernameIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/LoginSignupActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mIsSignup:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordWarning:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/LoginSignupActivity;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUseCCLicense:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/inaturalist/android/LoginSignupActivity;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUseCCLicense:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mCheckbox:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/inaturalist/android/LoginSignupActivity;)Lcom/facebook/login/widget/LoginButton;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/inaturalist/android/LoginSignupActivity;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/inaturalist/android/LoginSignupActivity;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/LoginSignupActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/inaturalist/android/LoginSignupActivity;->recreateSignInTaskIfNeeded()V

    return-void
.end method

.method static synthetic access$300(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsername:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/LoginSignupActivity;)Lorg/inaturalist/android/SignInTask;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/EditText;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mEmail:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mEmailIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/LoginSignupActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/inaturalist/android/LoginSignupActivity;->checkFields()V

    return-void
.end method

.method static synthetic access$900(Lorg/inaturalist/android/LoginSignupActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private checkFields()V
    .locals 3

    .line 453
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mIsSignup:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-boolean v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mIsSignup:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 456
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignup:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 454
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignup:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 493
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 494
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private recreateSignInTaskIfNeeded()V
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    invoke-virtual {v0}, Lorg/inaturalist/android/SignInTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 108
    new-instance v0, Lorg/inaturalist/android/SignInTask;

    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {v0, p0, p0, v1}, Lorg/inaturalist/android/SignInTask;-><init>(Landroid/app/Activity;Lorg/inaturalist/android/SignInTask$SignInTaskStatus;Lcom/facebook/login/widget/LoginButton;)V

    iput-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 471
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 472
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    invoke-virtual {v0, p1, p2, p3}, Lorg/inaturalist/android/SignInTask;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 461
    iget-boolean v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordChanged:Z

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    invoke-virtual {v0}, Lorg/inaturalist/android/SignInTask;->pause()V

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->setResult(I)V

    .line 464
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 465
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->requestWindowFeature(I)Z

    .line 115
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 118
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x4000000

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 122
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const-string v1, "#11ffffff"

    .line 123
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 125
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x500

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const/high16 p1, 0x10a0000

    const v1, 0x10a0001

    .line 129
    invoke-virtual {p0, p1, v1}, Lorg/inaturalist/android/LoginSignupActivity;->overridePendingTransition(II)V

    .line 131
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const p1, 0x7f0d0072

    .line 132
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LoginSignupActivity;->setContentView(I)V

    .line 134
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const p1, 0x7f0a006a

    .line 136
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mBackgroundImage:Landroid/widget/ImageView;

    .line 138
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "background_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 139
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "signup"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mIsSignup:Z

    .line 140
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "password_changed"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordChanged:Z

    packed-switch p1, :pswitch_data_0

    .line 151
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f080371

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 144
    :pswitch_0
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f080375

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mBackgroundImage:Landroid/widget/ImageView;

    const v1, 0x7f080373

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const p1, 0x7f0a0068

    .line 155
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 156
    new-instance v1, Lorg/inaturalist/android/LoginSignupActivity$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/LoginSignupActivity$1;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a011a

    .line 163
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mEmailIcon:Landroid/widget/ImageView;

    .line 164
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mEmailIcon:Landroid/widget/ImageView;

    new-instance v3, Lorg/inaturalist/android/LoginSignupActivity$2;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/LoginSignupActivity$2;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0118

    .line 171
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mEmail:Landroid/widget/EditText;

    .line 172
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mEmail:Landroid/widget/EditText;

    new-instance v3, Lorg/inaturalist/android/LoginSignupActivity$3;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/LoginSignupActivity$3;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 182
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mEmail:Landroid/widget/EditText;

    new-instance v3, Lorg/inaturalist/android/LoginSignupActivity$4;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/LoginSignupActivity$4;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x7f0a028f

    .line 197
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordIcon:Landroid/widget/ImageView;

    .line 198
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordIcon:Landroid/widget/ImageView;

    new-instance v3, Lorg/inaturalist/android/LoginSignupActivity$5;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/LoginSignupActivity$5;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a028d

    .line 204
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPassword:Landroid/widget/EditText;

    .line 205
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPassword:Landroid/widget/EditText;

    new-instance v3, Lorg/inaturalist/android/LoginSignupActivity$6;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/LoginSignupActivity$6;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v1, 0x7f0a03d8

    .line 216
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsernameIcon:Landroid/widget/ImageView;

    .line 217
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsernameIcon:Landroid/widget/ImageView;

    new-instance v3, Lorg/inaturalist/android/LoginSignupActivity$7;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/LoginSignupActivity$7;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a03d6

    .line 223
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsername:Landroid/widget/EditText;

    .line 224
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsername:Landroid/widget/EditText;

    new-instance v3, Lorg/inaturalist/android/LoginSignupActivity$8;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/LoginSignupActivity$8;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsername:Landroid/widget/EditText;

    new-instance v3, Lorg/inaturalist/android/LoginSignupActivity$9;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/LoginSignupActivity$9;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 249
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mEmailIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v3, 0x7f

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 250
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 251
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsernameIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v1, 0x7f0a0142

    .line 253
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mForgotPassword:Landroid/widget/TextView;

    .line 254
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mForgotPassword:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/inaturalist/android/LoginSignupActivity;->mIsSignup:Z

    const/16 v4, 0x8

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0a0290

    .line 256
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordWarning:Landroid/widget/TextView;

    .line 257
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordWarning:Landroid/widget/TextView;

    iget-boolean v3, p0, Lorg/inaturalist/android/LoginSignupActivity;->mIsSignup:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPassword:Landroid/widget/EditText;

    new-instance v3, Lorg/inaturalist/android/LoginSignupActivity$10;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/LoginSignupActivity$10;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 279
    iput-boolean v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUseCCLicense:Z

    const v0, 0x7f0a00ad

    .line 281
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mCheckboxDescription:Landroid/widget/TextView;

    .line 282
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mCheckboxDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mCheckboxDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mCheckboxDescription:Landroid/widget/TextView;

    new-instance v1, Lorg/inaturalist/android/LoginSignupActivity$11;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/LoginSignupActivity$11;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0396

    .line 290
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mTerms:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mTerms:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mTerms:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mTerms:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0a00ab

    .line 294
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mCheckbox:Landroid/widget/ImageView;

    .line 295
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mCheckbox:Landroid/widget/ImageView;

    new-instance v1, Lorg/inaturalist/android/LoginSignupActivity$12;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/LoginSignupActivity$12;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0339

    .line 307
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignup:Landroid/widget/Button;

    .line 308
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignup:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 310
    iget-boolean v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mIsSignup:Z

    const v1, 0x7f0a01e6

    const v3, 0x7f0a01e3

    if-nez v0, :cond_4

    const v0, 0x7f0a0020

    .line 311
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f100208

    .line 312
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0119

    .line 313
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 314
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a00ac

    .line 315
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsername:Landroid/widget/EditText;

    const v6, 0x7f100391

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(I)V

    .line 319
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mTerms:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a03d7

    .line 321
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 323
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 324
    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 326
    iget-object v6, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignup:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(I)V

    .line 327
    iget-object v5, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordWarning:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v5, p0, Lorg/inaturalist/android/LoginSignupActivity;->mForgotPassword:Landroid/widget/TextView;

    new-instance v6, Lorg/inaturalist/android/LoginSignupActivity$13;

    invoke-direct {v6, p0}, Lorg/inaturalist/android/LoginSignupActivity$13;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    iget-boolean v5, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPasswordChanged:Z

    if-eqz v5, :cond_5

    const-string v5, "iNaturalistPreferences"

    .line 345
    invoke-virtual {p0, v5, v2}, Lorg/inaturalist/android/LoginSignupActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "username"

    const-string v7, ""

    .line 346
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    iget-object v6, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 350
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 351
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 352
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 353
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 354
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a028e

    .line 356
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 357
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 360
    :cond_4
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 361
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 362
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 363
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mTerms:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_4
    const p1, 0x7f0a012b

    .line 367
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/login/widget/LoginButton;

    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    const p1, 0x7f0a01e8

    .line 369
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 370
    new-instance v0, Lorg/inaturalist/android/LoginSignupActivity$14;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/LoginSignupActivity$14;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01e9

    .line 378
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 379
    new-instance v0, Lorg/inaturalist/android/LoginSignupActivity$15;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/LoginSignupActivity$15;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    new-instance p1, Lorg/inaturalist/android/SignInTask;

    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p1, p0, p0, v0}, Lorg/inaturalist/android/SignInTask;-><init>(Landroid/app/Activity;Lorg/inaturalist/android/SignInTask$SignInTaskStatus;Lcom/facebook/login/widget/LoginButton;)V

    iput-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    .line 404
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignup:Landroid/widget/Button;

    new-instance v0, Lorg/inaturalist/android/LoginSignupActivity$16;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/LoginSignupActivity$16;-><init>(Lorg/inaturalist/android/LoginSignupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 432
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string p1, "input_method"

    .line 433
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LoginSignupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 434
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 436
    :cond_6
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    const p1, 0x7f0a0158

    .line 437
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LoginSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoginFailed(Lorg/inaturalist/android/INaturalistService$LoginType;)V
    .locals 1

    .line 486
    iget-boolean v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mIsSignup:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/inaturalist/android/LoginSignupActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne p1, v0, :cond_0

    .line 488
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mPassword:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onLoginSuccessful()V
    .locals 1

    .line 477
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    invoke-virtual {v0}, Lorg/inaturalist/android/SignInTask;->pause()V

    const/4 v0, -0x1

    .line 479
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LoginSignupActivity;->setResult(I)V

    .line 480
    invoke-virtual {p0}, Lorg/inaturalist/android/LoginSignupActivity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 500
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 502
    iget-object v0, p0, Lorg/inaturalist/android/LoginSignupActivity;->mUserRegisterReceiver:Lorg/inaturalist/android/LoginSignupActivity$UserRegisterReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x1000

    if-ne p1, p2, :cond_0

    .line 444
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 445
    invoke-direct {p0}, Lorg/inaturalist/android/LoginSignupActivity;->recreateSignInTaskIfNeeded()V

    .line 446
    iget-object p1, p0, Lorg/inaturalist/android/LoginSignupActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    sget-object p2, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3}, Lorg/inaturalist/android/SignInTask;->signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 74
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 80
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 81
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
