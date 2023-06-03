.class public Lorg/inaturalist/android/MissionsGridActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MissionsGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;
    }
.end annotation


# static fields
.field public static final MISSIONS_EXPANSION_LEVEL:Ljava/lang/String; = "missions_expansion_level"

.field public static final TAXON_ID:Ljava/lang/String; = "taxon_id"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mLoading:Landroid/widget/ProgressBar;

.field private mLoadingDescription:Landroid/widget/TextView;

.field public mMissions:Ljava/util/ArrayList;
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

.field mMissionsAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

.field public mMissionsCurrentExpansionLevel:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mMissionsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

.field private mMissionsReceiver:Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;

.field private mNoMissionsContainer:Landroid/view/ViewGroup;

.field public mTaxonId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsCurrentExpansionLevel:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mTaxonId:I

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/MissionsGridActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/MissionsGridActivity;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/inaturalist/android/MissionsGridActivity;->loadMissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/inaturalist/android/MissionsGridActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsGridActivity;->refreshViewState()V

    return-void
.end method

.method private loadMissions(Ljava/lang/String;)V
    .locals 4

    .line 116
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 120
    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    if-eqz p1, :cond_5

    const-string v0, "results"

    .line 121
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "results"

    .line 126
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    .line 131
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsGridActivity;->refreshViewState()V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 135
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 137
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 140
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_2
    iput-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissions:Ljava/util/ArrayList;

    .line 146
    iget-object p1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 148
    iget p1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsCurrentExpansionLevel:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsCurrentExpansionLevel:I

    .line 149
    iget p1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsCurrentExpansionLevel:I

    sget-object v0, Lorg/inaturalist/android/MissionsActivity;->RECOMMENDED_MISSIONS_EXPANSION:[F

    array-length v0, v0

    if-ge p1, v0, :cond_4

    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissions:Ljava/util/ArrayList;

    .line 153
    sget-object v0, Lorg/inaturalist/android/MissionsActivity;->RECOMMENDED_MISSIONS_EXPANSION:[F

    iget v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsCurrentExpansionLevel:I

    aget v0, v0, v1

    .line 155
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_MISSIONS_BY_TAXON:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v1, v2, p1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "username"

    .line 156
    iget-object v2, p0, Lorg/inaturalist/android/MissionsGridActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "expand_location_by_degrees"

    .line 157
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 158
    iget p1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mTaxonId:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_3

    const-string p1, "taxon_id"

    iget v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mTaxonId:I

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    :cond_3
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    return-void

    .line 122
    :cond_5
    :goto_2
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsGridActivity;->refreshViewState()V

    return-void
.end method

.method private refreshViewState()V
    .locals 4

    .line 166
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mLoadingDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mNoMissionsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 172
    iget v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsCurrentExpansionLevel:I

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mLoadingDescription:Landroid/widget/TextView;

    const v1, 0x7f100316

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mLoadingDescription:Landroid/widget/TextView;

    const v1, 0x7f100155

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mLoadingDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mNoMissionsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mNoMissionsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 190
    new-instance v0, Lorg/inaturalist/android/UserSpeciesAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissions:Ljava/util/ArrayList;

    const/16 v2, 0x1002

    iget-object v3, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/inaturalist/android/UserSpeciesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILorg/inaturalist/android/PullToRefreshGridViewExtended;)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    .line 191
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    iget-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionsGridActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0d0082

    .line 79
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/MissionsGridActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionsGridActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v1, "taxon_name"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionsGridActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "taxon_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionsGridActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const v2, 0x7f1002ee

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :goto_0
    const v1, 0x7f0a0219

    .line 89
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/MissionsGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    iput-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    .line 90
    iget-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 91
    iget-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    new-instance v2, Lorg/inaturalist/android/MissionsGridActivity$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/MissionsGridActivity$1;-><init>(Lorg/inaturalist/android/MissionsGridActivity;)V

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f0a01b7

    .line 102
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/MissionsGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mLoading:Landroid/widget/ProgressBar;

    const v1, 0x7f0a01bc

    .line 103
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/MissionsGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mLoadingDescription:Landroid/widget/TextView;

    const v1, 0x7f0a0251

    .line 104
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/MissionsGridActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mNoMissionsContainer:Landroid/view/ViewGroup;

    .line 106
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionsGridActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 107
    new-instance v1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    if-nez p1, :cond_1

    const-string p1, "missions_expansion_level"

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsCurrentExpansionLevel:I

    const-string p1, "taxon_id"

    const/4 v1, -0x1

    .line 111
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/MissionsGridActivity;->mTaxonId:I

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x102002c

    if-eq p1, v1, :cond_0

    return v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionsGridActivity;->finish()V

    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 269
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 271
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsReceiver:Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 216
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 218
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionsGridActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 222
    :cond_0
    new-instance v0, Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;-><init>(Lorg/inaturalist/android/MissionsGridActivity;Lorg/inaturalist/android/MissionsGridActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsReceiver:Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "missions_by_taxon_result"

    .line 224
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissionsReceiver:Lorg/inaturalist/android/MissionsGridActivity$MissionsReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 227
    iget-object v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mMissions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 228
    iget v0, p0, Lorg/inaturalist/android/MissionsGridActivity;->mTaxonId:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 230
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_MISSIONS_BY_TAXON:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "username"

    .line 231
    iget-object v2, p0, Lorg/inaturalist/android/MissionsGridActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "taxon_id"

    .line 232
    iget v2, p0, Lorg/inaturalist/android/MissionsGridActivity;->mTaxonId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "recommended_missions_result"

    .line 237
    invoke-direct {p0, v0}, Lorg/inaturalist/android/MissionsGridActivity;->loadMissions(Ljava/lang/String;)V

    .line 241
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsGridActivity;->refreshViewState()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
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
