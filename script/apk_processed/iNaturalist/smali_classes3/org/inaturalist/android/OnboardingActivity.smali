.class public Lorg/inaturalist/android/OnboardingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OnboardingActivity.java"

# interfaces
.implements Lorg/inaturalist/android/SignInTask$SignInTaskStatus;


# static fields
.field public static final LOGIN:Ljava/lang/String; = "login"

.field private static final PERMISSIONS_REQUEST:I = 0x1002

.field private static final REQUEST_CODE_LOGIN:I = 0x1001

.field private static final REQUEST_CODE_SIGNUP:I = 0x1000

.field public static final SHOW_SKIP:Ljava/lang/String; = "show_skip"

.field private static TAG:Ljava/lang/String; = "OnboardingActivity"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mBackgroundImage:Landroid/widget/ViewFlipper;

.field private mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSignInTask:Lorg/inaturalist/android/SignInTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/OnboardingActivity;)Lorg/inaturalist/android/SignInTask;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/inaturalist/android/OnboardingActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/OnboardingActivity;)Landroid/widget/ViewFlipper;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/inaturalist/android/OnboardingActivity;->mBackgroundImage:Landroid/widget/ViewFlipper;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/OnboardingActivity;)Lcom/facebook/login/widget/LoginButton;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/inaturalist/android/OnboardingActivity;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/OnboardingActivity;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/inaturalist/android/OnboardingActivity;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/OnboardingActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/inaturalist/android/OnboardingActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 219
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/OnboardingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 220
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
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


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 226
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 227
    iget-object v0, p0, Lorg/inaturalist/android/OnboardingActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    invoke-virtual {v0, p1, p2, p3}, Lorg/inaturalist/android/SignInTask;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1001

    if-eq p1, p3, :cond_0

    const/16 p3, 0x1000

    if-ne p1, p3, :cond_2

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 232
    new-instance p2, Landroid/content/Intent;

    sget-object p3, Lorg/inaturalist/android/INaturalistService;->ACTION_REFRESH_CURRENT_USER_SETTINGS:Ljava/lang/String;

    const/4 v0, 0x0

    const-class v1, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p2, p3, v0, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    invoke-static {p0, p2}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 235
    iget-object p2, p0, Lorg/inaturalist/android/OnboardingActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    invoke-virtual {p2}, Lorg/inaturalist/android/SignInTask;->pause()V

    .line 236
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/OnboardingActivity;->setResult(I)V

    .line 237
    invoke-virtual {p0}, Lorg/inaturalist/android/OnboardingActivity;->finish()V

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    invoke-virtual {p1}, Lorg/inaturalist/android/SignInTask;->resume()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 245
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Onboarding Login Cancel"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lorg/inaturalist/android/OnboardingActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    invoke-virtual {v0}, Lorg/inaturalist/android/SignInTask;->pause()V

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/OnboardingActivity;->setResult(I)V

    .line 248
    invoke-virtual {p0}, Lorg/inaturalist/android/OnboardingActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lorg/inaturalist/android/OnboardingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/inaturalist/android/OnboardingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string v1, "#11ffffff"

    .line 68
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 70
    invoke-virtual {p0}, Lorg/inaturalist/android/OnboardingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/OnboardingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/OnboardingActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v0, 0x7f0d00ae

    .line 75
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/OnboardingActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lorg/inaturalist/android/OnboardingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 80
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez p1, :cond_1

    const-string p1, "login"

    .line 82
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string p1, "show_skip"

    .line 83
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 86
    :cond_1
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const-string p1, "iNaturalistPreferences"

    .line 87
    invoke-virtual {p0, p1, v1}, Lorg/inaturalist/android/OnboardingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 88
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const p1, 0x7f0a006a

    .line 90
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewFlipper;

    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity;->mBackgroundImage:Landroid/widget/ViewFlipper;

    .line 91
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity;->mBackgroundImage:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->startFlipping()V

    const p1, 0x7f0a00b7

    .line 93
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 94
    new-instance v0, Lorg/inaturalist/android/OnboardingActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/OnboardingActivity$1;-><init>(Lorg/inaturalist/android/OnboardingActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a033a

    .line 101
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    new-instance v4, Lorg/inaturalist/android/OnboardingActivity$2;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/OnboardingActivity$2;-><init>(Lorg/inaturalist/android/OnboardingActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a033b

    .line 116
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    iget-object v4, p0, Lorg/inaturalist/android/OnboardingActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v4

    .line 118
    iget-object v5, p0, Lorg/inaturalist/android/OnboardingActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "network_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f10025c

    .line 119
    invoke-virtual {p0, v5}, Lorg/inaturalist/android/OnboardingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01e7

    .line 121
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    new-instance v1, Lorg/inaturalist/android/OnboardingActivity$3;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/OnboardingActivity$3;-><init>(Lorg/inaturalist/android/OnboardingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a033c

    .line 136
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 137
    new-instance v4, Lorg/inaturalist/android/OnboardingActivity$4;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/OnboardingActivity$4;-><init>(Lorg/inaturalist/android/OnboardingActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_2

    .line 147
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0a012b

    .line 153
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/login/widget/LoginButton;

    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    const p1, 0x7f0a01e8

    .line 155
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 156
    new-instance v1, Lorg/inaturalist/android/OnboardingActivity$5;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/OnboardingActivity$5;-><init>(Lorg/inaturalist/android/OnboardingActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a01e9

    .line 163
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/OnboardingActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 164
    new-instance v1, Lorg/inaturalist/android/OnboardingActivity$6;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/OnboardingActivity$6;-><init>(Lorg/inaturalist/android/OnboardingActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance p1, Lorg/inaturalist/android/SignInTask;

    iget-object v1, p0, Lorg/inaturalist/android/OnboardingActivity;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p1, p0, p0, v1}, Lorg/inaturalist/android/SignInTask;-><init>(Landroid/app/Activity;Lorg/inaturalist/android/SignInTask$SignInTaskStatus;Lcom/facebook/login/widget/LoginButton;)V

    iput-object p1, p0, Lorg/inaturalist/android/OnboardingActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    .line 188
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_3
    return-void
.end method

.method public onLoginFailed(Lorg/inaturalist/android/INaturalistService$LoginType;)V
    .locals 0

    return-void
.end method

.method public onLoginSuccessful()V
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/inaturalist/android/OnboardingActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    invoke-virtual {v0}, Lorg/inaturalist/android/SignInTask;->pause()V

    const/4 v0, -0x1

    .line 209
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/OnboardingActivity;->setResult(I)V

    .line 210
    invoke-virtual {p0}, Lorg/inaturalist/android/OnboardingActivity;->finish()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x1002

    if-ne p1, p2, :cond_0

    .line 198
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 199
    iget-object p1, p0, Lorg/inaturalist/android/OnboardingActivity;->mSignInTask:Lorg/inaturalist/android/SignInTask;

    sget-object p2, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3}, Lorg/inaturalist/android/SignInTask;->signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 47
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 54
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
