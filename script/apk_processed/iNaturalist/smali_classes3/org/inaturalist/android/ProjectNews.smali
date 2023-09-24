.class public Lorg/inaturalist/android/ProjectNews;
.super Lorg/inaturalist/android/BaseFragmentActivity;
.source "ProjectNews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;
    }
.end annotation


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIsUserFeed:Ljava/lang/Boolean;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLoadingNewsList:Landroid/widget/ProgressBar;

.field public mNews:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mNewsList:Landroid/widget/ListView;

.field private mNewsListAdapter:Lorg/inaturalist/android/ProjectNewsAdapter;

.field private mNewsListEmpty:Landroid/widget/TextView;

.field public mProject:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field private mProjectNewsReceiver:Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ProjectNews;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/inaturalist/android/ProjectNews;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ProjectNews;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/inaturalist/android/ProjectNews;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/ProjectNews;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectNews;->refreshViewState()V

    return-void
.end method

.method private refreshViewState()V
    .locals 4

    .line 242
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mNews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mLoadingNewsList:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mNewsList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mNewsListEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mLoadingNewsList:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mNews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mNewsListEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mNewsListEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    :goto_0
    new-instance v0, Lorg/inaturalist/android/ProjectNewsAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/inaturalist/android/ProjectNews;->mNews:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v3}, Lorg/inaturalist/android/ProjectNewsAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mNewsListAdapter:Lorg/inaturalist/android/ProjectNewsAdapter;

    .line 256
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mNewsList:Landroid/widget/ListView;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mNewsListAdapter:Lorg/inaturalist/android/ProjectNewsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mNewsList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 195
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 87
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 92
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectNews;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0d00ca

    .line 93
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ProjectNews;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectNews;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0a01c5

    .line 98
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ProjectNews;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mLoadingNewsList:Landroid/widget/ProgressBar;

    const v2, 0x7f0a0247

    .line 99
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ProjectNews;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mNewsListEmpty:Landroid/widget/TextView;

    const v2, 0x7f0a0246

    .line 100
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ProjectNews;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mNewsList:Landroid/widget/ListView;

    .line 102
    iget-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mNewsList:Landroid/widget/ListView;

    new-instance v3, Lorg/inaturalist/android/ProjectNews$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/ProjectNews$1;-><init>(Lorg/inaturalist/android/ProjectNews;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    iget-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v2, :cond_0

    .line 128
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectNews;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/INaturalistApp;

    iput-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    if-nez p1, :cond_1

    const-string v2, "project"

    .line 132
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/BetterJSONObject;

    iput-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "is_user_feed"

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mIsUserFeed:Ljava/lang/Boolean;

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mIsUserFeed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectNews;->finish()V

    return-void

    :cond_2
    const v0, 0x7f10025d

    .line 141
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 143
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mIsUserFeed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x1

    .line 144
    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 145
    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const p1, 0x7f08014e

    .line 146
    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectNews;->onDrawerCreate(Landroid/os/Bundle;)V

    .line 151
    :goto_0
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectNews;->refreshViewState()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mIsUserFeed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectNews;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 81
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 162
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onPause()V

    .line 164
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mProjectNewsReceiver:Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProjectNews;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 169
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onResume()V

    .line 170
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectNews;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 174
    :cond_0
    new-instance v0, Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;-><init>(Lorg/inaturalist/android/ProjectNews;Lorg/inaturalist/android/ProjectNews$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mProjectNewsReceiver:Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    iget-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mIsUserFeed:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_NEWS_RESULT:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_NEWS_RESULT:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mProjectNewsReceiver:Lorg/inaturalist/android/ProjectNews$ProjectNewsReceiver;

    invoke-virtual {p0, v2, v0}, Lorg/inaturalist/android/ProjectNews;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 179
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mNews:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 181
    iget-object v0, p0, Lorg/inaturalist/android/ProjectNews;->mIsUserFeed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEWS:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 186
    :cond_2
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_NEWS:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "project_id"

    .line 187
    iget-object v2, p0, Lorg/inaturalist/android/ProjectNews;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 189
    :goto_1
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 59
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStart()V

    .line 60
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 67
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStop()V

    .line 68
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
