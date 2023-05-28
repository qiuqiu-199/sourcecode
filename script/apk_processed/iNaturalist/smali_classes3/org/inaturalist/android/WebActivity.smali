.class public Lorg/inaturalist/android/WebActivity;
.super Lorg/inaturalist/android/BaseFragmentActivity;
.source "WebActivity.java"


# static fields
.field private static HOME_URL:Ljava/lang/String; = "%s/home.mobile"

.field private static final REQUEST_CODE_LOGIN:I = 0x1000

.field private static TAG:Ljava/lang/String; = "WebActivity"


# instance fields
.field private app:Lorg/inaturalist/android/INaturalistApp;

.field private helper:Lorg/inaturalist/android/ActivityHelper;

.field private mHomeUrl:Ljava/lang/String;

.field private mLogin:Landroid/widget/Button;

.field private mNotLoggedIn:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/WebActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/inaturalist/android/WebActivity;->helper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/WebActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/inaturalist/android/WebActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/WebActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public getAuthHeaders()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    iget-object v1, p0, Lorg/inaturalist/android/WebActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 181
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/WebActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getLoginType()Lorg/inaturalist/android/INaturalistService$LoginType;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/INaturalistService$LoginType;->PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const-string v1, "Authorization"

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/inaturalist/android/WebActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "credentials"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "Authorization"

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/inaturalist/android/WebActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "credentials"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public goHome()V
    .locals 3

    .line 190
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mLogin:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mNotLoggedIn:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/inaturalist/android/WebActivity;->mHomeUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/inaturalist/android/WebActivity;->getAuthHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mLogin:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mNotLoggedIn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 206
    invoke-super {p0, p1, p2, p3}, Lorg/inaturalist/android/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1000

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 210
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mLogin:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mNotLoggedIn:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    invoke-virtual {p0}, Lorg/inaturalist/android/WebActivity;->goHome()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x5

    .line 57
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/WebActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/WebActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lorg/inaturalist/android/WebActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v2, 0x106000d

    .line 65
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 67
    invoke-virtual {p0}, Lorg/inaturalist/android/WebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/WebActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    const v0, 0x7f0d00f8

    .line 68
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/WebActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/WebActivity;->onDrawerCreate(Landroid/os/Bundle;)V

    .line 70
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/WebActivity;->helper:Lorg/inaturalist/android/ActivityHelper;

    const p1, 0x7f0a03e6

    .line 71
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    const p1, 0x7f0a01e2

    .line 73
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/inaturalist/android/WebActivity;->mLogin:Landroid/widget/Button;

    const p1, 0x7f0a0258

    .line 74
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/WebActivity;->mNotLoggedIn:Landroid/widget/TextView;

    .line 76
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mLogin:Landroid/widget/Button;

    new-instance v0, Lorg/inaturalist/android/WebActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/WebActivity$1;-><init>(Lorg/inaturalist/android/WebActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mLogin:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mNotLoggedIn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inat_host_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    sget-object v0, Lorg/inaturalist/android/WebActivity;->HOME_URL:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/WebActivity;->mHomeUrl:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lorg/inaturalist/android/WebActivity$2;

    invoke-direct {v0, p0, p0}, Lorg/inaturalist/android/WebActivity$2;-><init>(Lorg/inaturalist/android/WebActivity;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 100
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lorg/inaturalist/android/WebActivity$3;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/WebActivity$3;-><init>(Lorg/inaturalist/android/WebActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 123
    invoke-virtual {p0}, Lorg/inaturalist/android/WebActivity;->goHome()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 153
    invoke-virtual {p0}, Lorg/inaturalist/android/WebActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0018

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 128
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 132
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mHomeUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 137
    invoke-virtual {p0}, Lorg/inaturalist/android/WebActivity;->goHome()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Lorg/inaturalist/android/WebActivity;->finish()V

    :goto_0
    return p2

    .line 148
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/inaturalist/android/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a02e0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a03d9

    if-eq v0, v1, :cond_0

    .line 172
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 165
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    .line 166
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/WebActivity;->mHomeUrl:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/WebActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return v2

    .line 162
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/inaturalist/android/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_4
    return v2
.end method

.method protected onStart()V
    .locals 2

    .line 43
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStart()V

    .line 44
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 51
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStop()V

    .line 52
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
