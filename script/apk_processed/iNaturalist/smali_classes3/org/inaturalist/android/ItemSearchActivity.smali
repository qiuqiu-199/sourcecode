.class public Lorg/inaturalist/android/ItemSearchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItemSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lorg/inaturalist/android/ProjectsAdapter$OnLoading;


# static fields
.field public static final IS_USER:Ljava/lang/String; = "is_user"

.field private static final LOG_TAG:Ljava/lang/String; = "ItemSearchActivity"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final RESULT_VIEWER_ACTIVITY:Ljava/lang/String; = "result_viewer_activity"

.field public static final RESULT_VIEWER_ACTIVITY_PARAM_NAME:Ljava/lang/String; = "result_viewer_activity_param_name"

.field public static final RETURN_RESULT:Ljava/lang/String; = "return_result"

.field public static final SEARCH_HINT_TEXT:Ljava/lang/String; = "search_hint_text"

.field public static final SEARCH_URL:Ljava/lang/String; = "search_url"


# instance fields
.field private mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mHintText:Ljava/lang/String;

.field private mIsUser:Z

.field private mListView:Landroid/widget/ListView;

.field private mNoResults:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field public mProjects:Ljava/util/List;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnResult:Z

.field private mSearchEditText:Landroid/widget/EditText;

.field public mSearchString:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mSearchUrl:Ljava/lang/String;

.field private mViewerActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mViewerActivityParamName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 75
    iput-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mSearchString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ItemSearchActivity;)Lorg/inaturalist/android/ProjectsAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ItemSearchActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ItemSearchActivity;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mNoResults:Landroid/widget/TextView;

    return-object p0
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 206
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ItemSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 207
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
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
.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const v0, 0x102000a

    .line 216
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ItemSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mListView:Landroid/widget/ListView;

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ItemSearchActivity;->setResult(I)V

    .line 120
    invoke-virtual {p0}, Lorg/inaturalist/android/ItemSearchActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 125
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/inaturalist/android/ItemSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ItemSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "result_viewer_activity"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mViewerActivity:Ljava/lang/Class;

    const-string v1, "result_viewer_activity_param_name"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mViewerActivityParamName:Ljava/lang/String;

    const-string v1, "search_hint_text"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mHintText:Ljava/lang/String;

    const-string v1, "search_url"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mSearchUrl:Ljava/lang/String;

    const-string v1, "return_result"

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mReturnResult:Z

    const-string v1, "is_user"

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mIsUser:Z

    .line 140
    invoke-virtual {p0}, Lorg/inaturalist/android/ItemSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 145
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00e7

    const/4 v3, 0x0

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v2, 0x7f08014e

    .line 148
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const v0, 0x7f0d00e6

    .line 150
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ItemSearchActivity;->setContentView(I)V

    const v0, 0x1020004

    .line 152
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ItemSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mNoResults:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mNoResults:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a02ad

    .line 155
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ItemSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 156
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v0, 0x7f0a0316

    .line 158
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mSearchEditText:Landroid/widget/EditText;

    const v0, 0x7f08026b

    const v1, 0x7f080132

    if-nez p1, :cond_2

    .line 161
    new-instance p1, Lorg/inaturalist/android/ProjectsAdapter;

    iget-object v4, p0, Lorg/inaturalist/android/ItemSearchActivity;->mSearchUrl:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Lorg/inaturalist/android/ItemSearchActivity;->mIsUser:Z

    if-eqz v2, :cond_1

    const v7, 0x7f080132

    goto :goto_0

    :cond_1
    const v7, 0x7f08026b

    :goto_0
    iget-boolean v8, p0, Lorg/inaturalist/android/ItemSearchActivity;->mIsUser:Z

    move-object v2, p1

    move-object v3, p0

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lorg/inaturalist/android/ProjectsAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/inaturalist/android/ProjectsAdapter$OnLoading;Ljava/util/List;IZ)V

    iput-object p1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

    goto :goto_2

    .line 163
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mSearchEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/inaturalist/android/ItemSearchActivity;->mSearchString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    new-instance p1, Lorg/inaturalist/android/ProjectsAdapter;

    iget-object v5, p0, Lorg/inaturalist/android/ItemSearchActivity;->mSearchUrl:Ljava/lang/String;

    iget-object v7, p0, Lorg/inaturalist/android/ItemSearchActivity;->mProjects:Ljava/util/List;

    iget-boolean v2, p0, Lorg/inaturalist/android/ItemSearchActivity;->mIsUser:Z

    if-eqz v2, :cond_3

    const v8, 0x7f080132

    goto :goto_1

    :cond_3
    const v8, 0x7f08026b

    :goto_1
    iget-boolean v9, p0, Lorg/inaturalist/android/ItemSearchActivity;->mIsUser:Z

    move-object v3, p1

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v3 .. v9}, Lorg/inaturalist/android/ProjectsAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/inaturalist/android/ProjectsAdapter$OnLoading;Ljava/util/List;IZ)V

    iput-object p1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

    .line 166
    :goto_2
    iget-object p1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mHintText:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mSearchEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mHintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 168
    :cond_4
    iget-object p1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mSearchEditText:Landroid/widget/EditText;

    new-instance v0, Lorg/inaturalist/android/ItemSearchActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ItemSearchActivity$1;-><init>(Lorg/inaturalist/android/ItemSearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    iget-object p1, p0, Lorg/inaturalist/android/ItemSearchActivity;->mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ItemSearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    invoke-virtual {p0}, Lorg/inaturalist/android/ItemSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 187
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 189
    iget-boolean p2, p0, Lorg/inaturalist/android/ItemSearchActivity;->mReturnResult:Z

    if-eqz p2, :cond_0

    .line 191
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "result"

    .line 192
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 193
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ItemSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lorg/inaturalist/android/ItemSearchActivity;->finish()V

    goto :goto_0

    .line 196
    :cond_0
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lorg/inaturalist/android/ItemSearchActivity;->mViewerActivity:Ljava/lang/Class;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    iget-object p3, p0, Lorg/inaturalist/android/ItemSearchActivity;->mViewerActivityParamName:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, p2}, Lorg/inaturalist/android/ItemSearchActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoading(Ljava/lang/Boolean;I)V
    .locals 1

    .line 228
    new-instance v0, Lorg/inaturalist/android/ItemSearchActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/inaturalist/android/ItemSearchActivity$2;-><init>(Lorg/inaturalist/android/ItemSearchActivity;Ljava/lang/Boolean;I)V

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ItemSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 114
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ItemSearchActivity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lorg/inaturalist/android/ItemSearchActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 95
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/inaturalist/android/ItemSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ProjectsAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ItemSearchActivity;->mProjects:Ljava/util/List;

    .line 254
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 89
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 102
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 222
    invoke-virtual {p0}, Lorg/inaturalist/android/ItemSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
