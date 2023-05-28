.class public Lorg/inaturalist/android/TaxonSuggestionsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TaxonSuggestionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;
    }
.end annotation


# static fields
.field public static final FROM_SUGGESTION:Ljava/lang/String; = "from_suggestion"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final OBSERVATION:Ljava/lang/String; = "observation"

.field public static final OBSERVATION_ID:Ljava/lang/String; = "observation_id"

.field public static final OBSERVATION_ID_INTERNAL:Ljava/lang/String; = "observation_id_internal"

.field public static final OBSERVED_ON:Ljava/lang/String; = "observed_on"

.field public static final OBS_PHOTO_FILENAME:Ljava/lang/String; = "obs_photo_filename"

.field public static final OBS_PHOTO_URL:Ljava/lang/String; = "obs_photo_url"

.field private static TAG:Ljava/lang/String; = "TaxonSuggestionsActivity"

.field private static final TAXON_SEARCH_REQUEST_CODE:I = 0x12e


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mBackButton:Landroid/view/View;

.field private mCommonAncestorDescription:Landroid/widget/TextView;

.field private mCommonAncestorList:Landroid/widget/ListView;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mLastTaxonPosition:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mLatitude:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLoadingSuggestions:Landroid/widget/ProgressBar;

.field public mLongitude:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mNoNetwork:Landroid/widget/TextView;

.field public mObsId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObsIdInternal:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mObsPhoto:Landroid/widget/ImageView;

.field public mObsPhotoFilename:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObsPhotoUrl:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservationJson:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservedOn:Ljava/sql/Timestamp;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mSpeciesSearch:Landroid/view/ViewGroup;

.field private mSuggestionsContainer:Landroid/view/ViewGroup;

.field private mSuggestionsDescription:Landroid/widget/TextView;

.field private mSuggestionsList:Landroid/widget/ListView;

.field public mTaxonCommonAncestor:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field public mTaxonSuggestions:Ljava/util/List;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mTaxonSuggestionsReceiver:Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/TaxonSuggestionsActivity;)Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestionsReceiver:Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/TaxonSuggestionsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mNoNetwork:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/TaxonSuggestionsActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLoadingSuggestions:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->loadSuggestions()V

    return-void
.end method

.method static synthetic access$500(Lorg/inaturalist/android/TaxonSuggestionsActivity;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->showTaxonComparison(I)V

    return-void
.end method

.method static synthetic access$600(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->resizeSuggestionsList()V

    return-void
.end method

.method static synthetic access$700(Lorg/inaturalist/android/TaxonSuggestionsActivity;)Landroid/widget/ListView;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsList:Landroid/widget/ListView;

    return-object p0
.end method

.method private loadSuggestions()V
    .locals 8

    .line 280
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLoadingSuggestions:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 283
    new-instance v0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;-><init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V

    .line 324
    iget-object v3, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonCommonAncestor:Lorg/inaturalist/android/BetterJSONObject;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 326
    iget-object v3, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsDescription:Landroid/widget/TextView;

    const v5, 0x7f1003a8

    invoke-virtual {p0, v5}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mCommonAncestorDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mCommonAncestorList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsDescription:Landroid/widget/TextView;

    const v3, 0x7f100373

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    iget-object v3, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonCommonAncestor:Lorg/inaturalist/android/BetterJSONObject;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v3, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mCommonAncestorList:Landroid/widget/ListView;

    new-instance v5, Lorg/inaturalist/android/TaxonSuggestionAdapter;

    invoke-direct {v5, p0, v1, v0, v2}, Lorg/inaturalist/android/TaxonSuggestionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;Z)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 335
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mCommonAncestorDescription:Landroid/widget/TextView;

    const v3, 0x7f1002d2

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonCommonAncestor:Lorg/inaturalist/android/BetterJSONObject;

    const-string v7, "taxon"

    invoke-virtual {v6, v7}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "rank"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mCommonAncestorDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mCommonAncestorList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 340
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsList:Landroid/widget/ListView;

    new-instance v2, Lorg/inaturalist/android/TaxonSuggestionAdapter;

    iget-object v3, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestions:Ljava/util/List;

    invoke-direct {v2, p0, v3, v0, v4}, Lorg/inaturalist/android/TaxonSuggestionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->resizeSuggestionsList()V

    return-void
.end method

.method private resizeSuggestionsList()V
    .locals 4

    .line 380
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 381
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Lorg/inaturalist/android/TaxonSuggestionsActivity$6;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity$6;-><init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsList:Landroid/widget/ListView;

    new-instance v1, Lorg/inaturalist/android/TaxonSuggestionsActivity$7;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity$7;-><init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private showTaxonComparison(I)V
    .locals 3

    .line 346
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestions:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "suggestion_index"

    .line 349
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObservationJson:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "observation_json"

    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObservationJson:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    :cond_1
    iget p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsIdInternal:I

    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    const-string p1, "observation_id_internal"

    iget v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsIdInternal:I

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    :cond_2
    iget p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsId:I

    if-le p1, v1, :cond_3

    const-string p1, "observation_id"

    iget v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestions:Ljava/util/List;

    invoke-static {p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->setTaxonSuggestions(Ljava/util/List;)V

    const/16 p1, 0x12e

    .line 354
    invoke-virtual {p0, v0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 360
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x12e

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 365
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 366
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "from_suggestion"

    const/4 v1, 0x0

    .line 367
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 371
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->finish()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x1000

    if-ne p2, p1, :cond_1

    .line 374
    iget p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLastTaxonPosition:I

    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->showTaxonComparison(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x5

    .line 135
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x2

    .line 136
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->requestWindowFeature(I)Z

    .line 138
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 145
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 146
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 148
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "obs_photo_filename"

    .line 151
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsPhotoFilename:Ljava/lang/String;

    const-string p1, "obs_photo_url"

    .line 152
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsPhotoUrl:Ljava/lang/String;

    const-string p1, "longitude"

    const-wide/16 v2, 0x0

    .line 153
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLongitude:D

    const-string p1, "latitude"

    .line 154
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLatitude:D

    const-string p1, "observed_on"

    .line 155
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObservedOn:Ljava/sql/Timestamp;

    const-string p1, "observation_id"

    .line 156
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsId:I

    const-string p1, "observation_id_internal"

    const/4 v2, -0x1

    .line 157
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsIdInternal:I

    const-string p1, "observation"

    .line 158
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObservationJson:Ljava/lang/String;

    :cond_0
    const p1, 0x7f0d00e9

    .line 161
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->setContentView(I)V

    const p1, 0x7f0a0264

    .line 163
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsPhoto:Landroid/widget/ImageView;

    const p1, 0x7f0a0068

    .line 164
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mBackButton:Landroid/view/View;

    const p1, 0x7f0a0352

    .line 165
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSpeciesSearch:Landroid/view/ViewGroup;

    const p1, 0x7f0a0366

    .line 166
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsDescription:Landroid/widget/TextView;

    const p1, 0x7f0a0367

    .line 167
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsList:Landroid/widget/ListView;

    const p1, 0x7f0a00cc

    .line 168
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mCommonAncestorDescription:Landroid/widget/TextView;

    const p1, 0x7f0a00cd

    .line 169
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mCommonAncestorList:Landroid/widget/ListView;

    const p1, 0x7f0a01cf

    .line 170
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLoadingSuggestions:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0365

    .line 171
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a024f

    .line 172
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mNoNetwork:Landroid/widget/TextView;

    .line 174
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mNoNetwork:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLoadingSuggestions:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSpeciesSearch:Landroid/view/ViewGroup;

    new-instance v0, Lorg/inaturalist/android/TaxonSuggestionsActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity$1;-><init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mBackButton:Landroid/view/View;

    new-instance v0, Lorg/inaturalist/android/TaxonSuggestionsActivity$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity$2;-><init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 210
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 212
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestionsReceiver:Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 217
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 219
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;-><init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;Lorg/inaturalist/android/TaxonSuggestionsActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestionsReceiver:Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "action_get_taxon_suggestions_result"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mTaxonSuggestionsReceiver:Lorg/inaturalist/android/TaxonSuggestionsActivity$TaxonSuggestionsReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 225
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_SUGGESTIONS:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "obs_photo_filename"

    .line 226
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsPhotoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "obs_photo_url"

    .line 227
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsPhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "longitude"

    .line 228
    iget-wide v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLongitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "latitude"

    .line 229
    iget-wide v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLatitude:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "observed_on"

    .line 230
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObservedOn:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 231
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 233
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLoadingSuggestions:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mSuggestionsContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->loadSuggestions()V

    .line 242
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsPhotoFilename:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 244
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsPhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    goto :goto_1

    .line 247
    :cond_1
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsPhotoFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 251
    :goto_1
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsPhoto:Landroid/widget/ImageView;

    new-instance v2, Lorg/inaturalist/android/TaxonSuggestionsActivity$3;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity$3;-><init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 263
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsPhoto:Landroid/widget/ImageView;

    new-instance v1, Lorg/inaturalist/android/TaxonSuggestionsActivity$4;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity$4;-><init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 86
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 93
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 94
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method public setListViewHeightBasedOnItems(Landroid/widget/ListView;)I
    .locals 8

    .line 411
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 414
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const/4 v5, 0x0

    .line 419
    invoke-interface {v0, v3, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 420
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    .line 421
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    add-int/lit8 v2, v2, -0x1

    mul-int v0, v0, v2

    .line 429
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 430
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    add-int/2addr v4, v0

    .line 432
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_1

    .line 433
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 434
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 438
    :cond_1
    iget p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p1

    :cond_2
    return v1
.end method
