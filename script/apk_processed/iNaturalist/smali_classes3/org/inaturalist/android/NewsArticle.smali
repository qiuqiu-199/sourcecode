.class public Lorg/inaturalist/android/NewsArticle;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NewsArticle.java"


# static fields
.field public static final KEY_ARTICLE:Ljava/lang/String; = "article"

.field public static final KEY_IS_USER_FEED:Ljava/lang/String; = "is_user_feed"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mArticle:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field private mArticleContent:Landroid/widget/TextView;

.field private mArticleContentWeb:Landroid/webkit/WebView;

.field private mArticleTitle:Landroid/widget/TextView;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIsUserFeed:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mUserPic:Landroid/widget/ImageView;

.field private mUsername:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 239
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 86
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 89
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/NewsArticle;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 91
    invoke-virtual {p0}, Lorg/inaturalist/android/NewsArticle;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0d0020

    .line 92
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/NewsArticle;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lorg/inaturalist/android/NewsArticle;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 96
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v3, 0x7f08014e

    .line 97
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const v3, 0x7f100062

    .line 98
    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    const v1, 0x7f0a005e

    .line 100
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/NewsArticle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleTitle:Landroid/widget/TextView;

    const v1, 0x7f0a005d

    .line 101
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/NewsArticle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContentWeb:Landroid/webkit/WebView;

    const v1, 0x7f0a005c

    .line 102
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/NewsArticle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContent:Landroid/widget/TextView;

    const v1, 0x7f0a03d6

    .line 103
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/NewsArticle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/NewsArticle;->mUsername:Landroid/widget/TextView;

    const v1, 0x7f0a03d2

    .line 104
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/NewsArticle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/inaturalist/android/NewsArticle;->mUserPic:Landroid/widget/ImageView;

    .line 106
    iget-object v1, p0, Lorg/inaturalist/android/NewsArticle;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/inaturalist/android/NewsArticle;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/NewsArticle;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p1, "article"

    .line 111
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticle:Lorg/inaturalist/android/BetterJSONObject;

    const-string p1, "is_user_feed"

    .line 112
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/NewsArticle;->mIsUserFeed:Z

    .line 116
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticle:Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_2

    .line 117
    invoke-virtual {p0}, Lorg/inaturalist/android/NewsArticle;->finish()V

    return-void

    .line 121
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/inaturalist/android/NewsArticle;->mArticle:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "title"

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-boolean p1, p0, Lorg/inaturalist/android/NewsArticle;->mIsUserFeed:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_3

    .line 124
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContent:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContentWeb:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContentWeb:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 127
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContentWeb:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 128
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContentWeb:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    const-string p1, "<html><head><style type=\"text/css\"> @font-face { font-family: Whitney;src: url(\"file:///android_asset/fonts/whitney_light_pro.otf\")}body {line-height: 22pt;margin: 0;padding: 0;font-family: \"HelveticaNeue-UltraLight\", \"Segoe UI\", \"Roboto Light\", sans-serif;font-size: medium;} div {max-width: 100%;} figure { padding: 0; margin: 0; } img { padding-top: 4; padding-bottom: 4; max-width: 100%; } </style><meta name=\"viewport\" content=\"user-scalable=no, initial-scale=1.0, maximum-scale=1.0, width=device-width\" ></head><body>"

    .line 152
    iget-object v0, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContentWeb:Landroid/webkit/WebView;

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticle:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "body"

    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</body></html>"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContentWeb:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContent:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContent:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/inaturalist/android/NewsArticle;->mArticle:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContent:Landroid/widget/TextView;

    const/16 v0, 0xf

    invoke-static {p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 160
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mArticle:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lorg/inaturalist/android/NewsArticle;->mUsername:Landroid/widget/TextView;

    const-string v1, "login"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    new-instance v0, Lorg/inaturalist/android/NewsArticle$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/NewsArticle$1;-><init>(Lorg/inaturalist/android/NewsArticle;)V

    .line 190
    iget-object v1, p0, Lorg/inaturalist/android/NewsArticle;->mArticleContentWeb:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 193
    new-instance v0, Lorg/inaturalist/android/NewsArticle$2;

    invoke-direct {v0, p0, p1}, Lorg/inaturalist/android/NewsArticle$2;-><init>(Lorg/inaturalist/android/NewsArticle;Lorg/json/JSONObject;)V

    const-string v1, "user_icon_url"

    .line 203
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "user_icon_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 204
    iget-object v1, p0, Lorg/inaturalist/android/NewsArticle;->mUserPic:Landroid/widget/ImageView;

    const-string v2, "user_icon_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f080131

    new-instance v3, Lorg/inaturalist/android/NewsArticle$3;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/NewsArticle$3;-><init>(Lorg/inaturalist/android/NewsArticle;)V

    invoke-static {v1, p1, v2, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 218
    :cond_4
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mUserPic:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object p1, p0, Lorg/inaturalist/android/NewsArticle;->mUsername:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 80
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/NewsArticle;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 231
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 232
    iget-object v0, p0, Lorg/inaturalist/android/NewsArticle;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lorg/inaturalist/android/NewsArticle;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/NewsArticle;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 225
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 61
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 69
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
