.class public Lorg/inaturalist/android/SignInTask;
.super Landroid/os/AsyncTask;
.source "SignInTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/SignInTask$SignInTaskStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final GOOGLE_AUTH_TOKEN_TYPE:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile"

.field private static final REQUEST_CODE_ADD_ACCOUNT:I = 0x3001

.field private static final REQUEST_CODE_CHOOSE_GOOGLE_ACCOUNT:I = 0x3002

.field private static final REQUEST_CODE_LOGIN:I = 0x3000

.field private static final TAG:Ljava/lang/String; = "SignInTask"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lorg/inaturalist/android/SignInTask$SignInTaskStatus;

.field private mFacebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private mFacebookCallbackManager:Lcom/facebook/CallbackManager;

.field private mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

.field private mGoogleUsername:Ljava/lang/String;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mInvalidated:Z

.field private mLoginErrorMessage:Ljava/lang/String;

.field private mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

.field private mPassword:Ljava/lang/String;

.field private mPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/inaturalist/android/SignInTask$SignInTaskStatus;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 70
    iput-object v0, p0, Lorg/inaturalist/android/SignInTask;->mLoginErrorMessage:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    .line 79
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    const-string v1, "iNaturalistPreferences"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SignInTask;->mPreferences:Landroid/content/SharedPreferences;

    .line 80
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 81
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    iget-object v1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/SignInTask;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 82
    iput-object p2, p0, Lorg/inaturalist/android/SignInTask;->mCallback:Lorg/inaturalist/android/SignInTask$SignInTaskStatus;

    .line 83
    iput-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    .line 84
    iput-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookCallbackManager:Lcom/facebook/CallbackManager;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/inaturalist/android/SignInTask$SignInTaskStatus;Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/SignInTask;-><init>(Landroid/app/Activity;Lorg/inaturalist/android/SignInTask$SignInTaskStatus;)V

    .line 89
    iput-object p3, p0, Lorg/inaturalist/android/SignInTask;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    .line 91
    new-instance p1, Lorg/inaturalist/android/SignInTask$1;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/SignInTask$1;-><init>(Lorg/inaturalist/android/SignInTask;)V

    iput-object p1, p0, Lorg/inaturalist/android/SignInTask;->mFacebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 105
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/SignInTask;->mFacebookCallbackManager:Lcom/facebook/CallbackManager;

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "email"

    .line 108
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p2, p0, Lorg/inaturalist/android/SignInTask;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {p2, p1}, Lcom/facebook/login/widget/LoginButton;->setReadPermissions(Ljava/util/List;)V

    .line 111
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mFacebookLoginButton:Lcom/facebook/login/widget/LoginButton;

    iget-object p2, p0, Lorg/inaturalist/android/SignInTask;->mFacebookCallbackManager:Lcom/facebook/CallbackManager;

    new-instance p3, Lorg/inaturalist/android/SignInTask$2;

    invoke-direct {p3, p0}, Lorg/inaturalist/android/SignInTask$2;-><init>(Lorg/inaturalist/android/SignInTask;)V

    invoke-virtual {p1, p2, p3}, Lcom/facebook/login/widget/LoginButton;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/SignInTask;)Landroid/content/SharedPreferences;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/inaturalist/android/SignInTask;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/SignInTask;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/inaturalist/android/SignInTask;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/SignInTask;)Landroid/app/Activity;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/SignInTask;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/inaturalist/android/SignInTask;->mLoginErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lorg/inaturalist/android/SignInTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/inaturalist/android/SignInTask;->mLoginErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method private askForGoogleEmail()V
    .locals 5

    .line 384
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 387
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v1, p0, Lorg/inaturalist/android/SignInTask;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    new-instance v2, Lorg/inaturalist/android/SignInTask$4;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/SignInTask$4;-><init>(Lorg/inaturalist/android/SignInTask;Landroid/widget/EditText;)V

    new-instance v3, Lorg/inaturalist/android/SignInTask$5;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/SignInTask$5;-><init>(Lorg/inaturalist/android/SignInTask;)V

    const v4, 0x7f10014c

    invoke-virtual {v1, v4, v0, v2, v3}, Lorg/inaturalist/android/ActivityHelper;->confirm(ILjava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 146
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
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

.method private signOut()V
    .locals 8

    .line 362
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "username"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "credentials"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "password"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 367
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "login_type"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 368
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_sync_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 369
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_downloaded_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "((_updated_at > _synced_at AND _synced_at IS NOT NULL) OR (_synced_at IS NULL))"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 373
    iget-object v1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "((_updated_at > _synced_at AND _synced_at IS NOT NULL) OR (_synced_at IS NULL))"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 374
    iget-object v3, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "(is_new = 1) OR (is_deleted = 1)"

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 375
    iget-object v4, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "((_updated_at > _synced_at AND _synced_at IS NOT NULL) OR (_synced_at IS NULL))"

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const-string v4, "SignInTask"

    const-string v5, "Deleted %d / %d / %d / %d unsynced observations"

    const/4 v6, 0x4

    .line 377
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/SignInTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 153
    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/inaturalist/android/SignInTask;->mUsername:Ljava/lang/String;

    const/4 v1, 0x1

    .line 154
    aget-object v2, p1, v1

    iput-object v2, p0, Lorg/inaturalist/android/SignInTask;->mPassword:Ljava/lang/String;

    const/4 v2, 0x2

    .line 155
    aget-object v2, p1, v2

    invoke-static {v2}, Lorg/inaturalist/android/INaturalistService$LoginType;->valueOf(Ljava/lang/String;)Lorg/inaturalist/android/INaturalistService$LoginType;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/SignInTask;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    .line 156
    array-length v2, p1

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 157
    aget-object p1, p1, v3

    const-string v2, "invalidated"

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/inaturalist/android/SignInTask;->mInvalidated:Z

    goto :goto_1

    .line 159
    :cond_1
    iput-boolean v0, p0, Lorg/inaturalist/android/SignInTask;->mInvalidated:Z

    .line 162
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/inaturalist/android/SignInTask;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Lorg/inaturalist/android/SignInTask;->mPassword:Ljava/lang/String;

    iget-object v4, p0, Lorg/inaturalist/android/SignInTask;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-static {p1, v2, v3, v4}, Lorg/inaturalist/android/INaturalistService;->verifyCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/inaturalist/android/INaturalistService$LoginType;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_2
    aget-object v1, p1, v1

    iput-object v1, p0, Lorg/inaturalist/android/SignInTask;->mUsername:Ljava/lang/String;

    .line 171
    aget-object p1, p1, v0

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 264
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookCallbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    const/16 v0, 0x3001

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 270
    sget-object p1, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    iget-object p2, p0, Lorg/inaturalist/android/SignInTask;->mGoogleUsername:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2}, Lorg/inaturalist/android/SignInTask;->signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/16 v0, 0x3000

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 274
    sget-object p1, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    iget-object p2, p0, Lorg/inaturalist/android/SignInTask;->mGoogleUsername:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2}, Lorg/inaturalist/android/SignInTask;->signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x3002

    if-ne p1, v0, :cond_7

    if-ne p2, v1, :cond_7

    const-string p1, "authAccount"

    .line 277
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "accountType"

    .line 278
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 280
    iget-object p3, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-static {p3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p2

    const/4 p3, 0x0

    .line 283
    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_4

    .line 284
    aget-object v0, p2, p3

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    aget-object p2, p2, p3

    move-object v4, p2

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    move-object v4, v2

    .line 292
    :goto_1
    iget-boolean p2, p0, Lorg/inaturalist/android/SignInTask;->mInvalidated:Z

    if-eqz p2, :cond_5

    const-string v2, "invalidated"

    .line 293
    :cond_5
    new-instance v8, Lorg/inaturalist/android/SignInTask$3;

    invoke-direct {v8, p0, p1, v2}, Lorg/inaturalist/android/SignInTask$3;-><init>(Lorg/inaturalist/android/SignInTask;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_6

    return-void

    .line 322
    :cond_6
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v5, "oauth2:https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile"

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_7
    :goto_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/SignInTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :catch_0
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->FACEBOOK:Lorg/inaturalist/android/INaturalistService$LoginType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, "Facebook"

    goto :goto_1

    .line 197
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne v0, v1, :cond_3

    const-string v0, "Google+"

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "iNaturalist"

    :goto_1
    if-eqz p1, :cond_5

    .line 204
    iget-object v1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    const v4, 0x7f100330

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 207
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "Via"

    .line 208
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v3, "Login"

    invoke-virtual {v0, v3, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 212
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 246
    :goto_2
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "username"

    iget-object v3, p0, Lorg/inaturalist/android/SignInTask;->mUsername:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "credentials"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "password"

    iget-object v1, p0, Lorg/inaturalist/android/SignInTask;->mPassword:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "login_type"

    iget-object v1, p0, Lorg/inaturalist/android/SignInTask;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistService$LoginType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mCallback:Lorg/inaturalist/android/SignInTask$SignInTaskStatus;

    invoke-interface {p1}, Lorg/inaturalist/android/SignInTask$SignInTaskStatus;->onLoginSuccessful()V

    .line 258
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 216
    :cond_5
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->FACEBOOK:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne p1, v1, :cond_6

    .line 218
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/LoginManager;->logOut()V

    goto :goto_3

    .line 219
    :cond_6
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne p1, v1, :cond_7

    iget-boolean p1, p0, Lorg/inaturalist/android/SignInTask;->mInvalidated:Z

    if-nez p1, :cond_7

    .line 220
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    const-string v0, "com.google"

    iget-object v1, p0, Lorg/inaturalist/android/SignInTask;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object p1, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mUsername:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/inaturalist/android/SignInTask;->signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 226
    :cond_7
    :goto_3
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "from"

    .line 227
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mLoginErrorMessage:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "code"

    iget-object v1, p0, Lorg/inaturalist/android/SignInTask;->mLoginErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_8
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Login Failed"

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 232
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 236
    :goto_4
    invoke-direct {p0}, Lorg/inaturalist/android/SignInTask;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_9

    .line 237
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100285

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    goto :goto_5

    .line 239
    :cond_9
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    const v1, 0x7f100390

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    .line 241
    :goto_5
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mCallback:Lorg/inaturalist/android/SignInTask$SignInTaskStatus;

    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-interface {p1, v0}, Lorg/inaturalist/android/SignInTask$SignInTaskStatus;->onLoginFailed(Lorg/inaturalist/android/INaturalistService$LoginType;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lorg/inaturalist/android/SignInTask;->mLoginErrorMessage:Ljava/lang/String;

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    const v3, 0x7f100335

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/SignInTask;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lorg/inaturalist/android/SignInTask;->mFacebookAccessTokenTracker:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->startTracking()V

    :cond_0
    return-void
.end method

.method public signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/inaturalist/android/SignInTask;->signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public signIn(Lorg/inaturalist/android/INaturalistService$LoginType;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .line 337
    sget-object v0, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 346
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_1

    .line 347
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/String;

    const-string p1, "com.google"

    aput-object p1, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    .line 349
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/String;

    const-string p1, "com.google"

    aput-object p1, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 352
    :goto_1
    iput-boolean p4, p0, Lorg/inaturalist/android/SignInTask;->mInvalidated:Z

    .line 353
    iget-object p2, p0, Lorg/inaturalist/android/SignInTask;->mActivity:Landroid/app/Activity;

    const/16 p3, 0x3002

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    .line 357
    new-array p1, p1, [Ljava/lang/String;

    aput-object p2, p1, v1

    aput-object p3, p1, v2

    const/4 p2, 0x2

    sget-object p3, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-virtual {p3}, Lorg/inaturalist/android/INaturalistService$LoginType;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/SignInTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2
    return-void
.end method
