.class public Lorg/inaturalist/android/ExploreSearchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ExploreSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;
    }
.end annotation


# static fields
.field private static DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLACE_SEARCH_HISTORY_SIZE:I = 0xa

.field public static final SEARCH_FILTERS:Ljava/lang/String; = "search_filters"

.field private static final SEARCH_TYPE_LOCATION:I = 0x1

.field private static final SEARCH_TYPE_NONE:I = 0x2

.field private static final SEARCH_TYPE_TAXON:I


# instance fields
.field public mActiveSearchType:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mClearLocation:Landroid/widget/ImageView;

.field private mClearTaxon:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mIsSearching:Z

.field public mLastSearch:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLoadingResults:Landroid/widget/ProgressBar;

.field private mLocationEditText:Landroid/widget/EditText;

.field private mLocationIcon:Landroid/widget/ImageView;

.field private mNoResultsFound:Landroid/widget/TextView;

.field private mRefreshingUi:Z

.field public mResults:Ljava/util/ArrayList;
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

.field private mResultsList:Landroid/widget/ListView;

.field private mSearchButton:Landroid/widget/ImageButton;

.field public mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mTaxonEditText:Landroid/widget/EditText;

.field private mTaxonIcon:Landroid/widget/ImageView;

.field private mTaxonResultsReceiver:Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mIsSearching:Z

    .line 67
    iput-boolean v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mRefreshingUi:Z

    .line 68
    iput v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ExploreSearchActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mRefreshingUi:Z

    return p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/ExploreSearchActivity;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->refreshViewState(Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/ExploreSearchActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/ExploreSearchActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->addPlaceToSearchHistory(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1402(Lorg/inaturalist/android/ExploreSearchActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mIsSearching:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/inaturalist/android/ExploreSearchActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearTaxon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearLocation:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/ExploreSearchActivity;Ljava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/ExploreSearchActivity;->performSearch(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lorg/inaturalist/android/ExploreSearchActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private addPlaceToSearchHistory(Lorg/json/JSONObject;)V
    .locals 6

    .line 535
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->loadPlaceSearchHistory()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 541
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 542
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v5, "id"

    .line 543
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "id"

    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-le v2, v4, :cond_2

    .line 550
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "is_recent_result"

    .line 554
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 556
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 560
    :goto_2
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 562
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0xa

    if-le p1, v1, :cond_3

    .line 563
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 566
    :cond_3
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 567
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 568
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 571
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 572
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "place_search_history"

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private getMyLocationResult()Lorg/json/JSONObject;
    .locals 3

    .line 634
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "is_my_location"

    const/4 v2, 0x1

    .line 635
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 638
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private isLocationPermissionGranted()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 645
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 646
    invoke-static {p0, v0}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadPlaceSearchHistory()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "place_search_history"

    const-string v2, "[]"

    .line 517
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 521
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 522
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 527
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private performSearch(Ljava/lang/String;I)V
    .locals 5

    .line 318
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 323
    iput-object v2, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    .line 324
    invoke-direct {p0, v1}, Lorg/inaturalist/android/ExploreSearchActivity;->refreshViewState(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mIsSearching:Z

    .line 329
    iput-object v2, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    .line 330
    iput p2, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    .line 332
    new-instance v3, Landroid/content/Intent;

    if-nez p2, :cond_2

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_TAXA:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_PLACES:Ljava/lang/String;

    :goto_0
    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v3, p2, v2, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "query"

    .line 333
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "page_number"

    .line 334
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 337
    invoke-direct {p0, v1}, Lorg/inaturalist/android/ExploreSearchActivity;->refreshViewState(Z)V

    return-void
.end method

.method private refreshViewState(Z)V
    .locals 6

    const/4 v0, 0x1

    .line 342
    iput-boolean v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mRefreshingUi:Z

    const v1, 0x7f10023b

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    .line 346
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const v4, 0x7f080243

    if-lez p1, :cond_0

    iget p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    if-nez p1, :cond_0

    .line 347
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonIcon:Landroid/widget/ImageView;

    const-string v4, "#646464"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 350
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearTaxon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 351
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    if-nez p1, :cond_1

    .line 353
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonIcon:Landroid/widget/ImageView;

    const-string v4, "#646464"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 356
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearTaxon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 359
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 360
    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, v3, p1}, Landroid/widget/EditText;->setSelection(II)V

    .line 362
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 363
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    const-string v4, "default_photo"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    const-string v4, "default_photo"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 365
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v4, v4, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    const-string v5, "default_photo"

    .line 366
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "square_url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance v4, Ljp/wasabeef/picasso/transformations/RoundedCornersTransformation;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v3}, Ljp/wasabeef/picasso/transformations/RoundedCornersTransformation;-><init>(II)V

    .line 367
    invoke-virtual {p1, v4}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v4, v4, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    .line 368
    invoke-static {v4}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 369
    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonIcon:Landroid/widget/ImageView;

    .line 370
    invoke-virtual {p1, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 373
    :cond_2
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v4, v4, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    invoke-static {v4}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 375
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearTaxon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    if-ne p1, v0, :cond_3

    .line 380
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    const-string v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 382
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationIcon:Landroid/widget/ImageView;

    const-string v4, "#646464"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 383
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearLocation:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 384
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-boolean p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    const v4, 0x7f060086

    if-eqz p1, :cond_4

    .line 386
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(I)V

    .line 387
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/widget/EditText;->setSelection(II)V

    .line 388
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 389
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 390
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearLocation:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 391
    :cond_4
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz p1, :cond_5

    .line 392
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    const v5, 0x7f100213

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(I)V

    .line 393
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v5}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/widget/EditText;->setSelection(II)V

    .line 394
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 395
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 396
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearLocation:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 397
    :cond_5
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    .line 399
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    const-string v5, "display_name"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 400
    iget-object v5, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v5, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v5, v3, p1}, Landroid/widget/EditText;->setSelection(II)V

    .line 402
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 403
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 404
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearLocation:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 407
    :cond_6
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 409
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearLocation:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    :goto_2
    iget p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    if-nez p1, :cond_7

    .line 413
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3

    .line 414
    :cond_7
    iget p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    if-ne p1, v0, :cond_8

    .line 415
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3

    .line 418
    :cond_8
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 419
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    const-string p1, "input_method"

    .line 421
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 422
    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 428
    :cond_9
    :goto_3
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_d

    .line 429
    iget p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    if-nez p1, :cond_a

    .line 431
    sget-object p1, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    goto :goto_4

    .line 432
    :cond_a
    iget p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    if-ne p1, v0, :cond_c

    .line 434
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->loadPlaceSearchHistory()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    .line 436
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->isLocationPermissionGranted()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 438
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getMyLocationResult()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 441
    :cond_b
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_5

    .line 448
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v0, 0x0

    .line 452
    :goto_5
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    if-nez p1, :cond_f

    .line 453
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResultsList:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 454
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLoadingResults:Landroid/widget/ProgressBar;

    iget-boolean v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mIsSearching:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_6

    :cond_e
    const/16 v0, 0x8

    :goto_6
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 455
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mNoResultsFound:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 457
    :cond_f
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLoadingResults:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 458
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResultsList:Landroid/widget/ListView;

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 460
    iget p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    if-nez p1, :cond_10

    .line 461
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResultsList:Landroid/widget/ListView;

    new-instance v1, Lorg/inaturalist/android/TaxonAdapter;

    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4}, Lorg/inaturalist/android/TaxonAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7

    .line 463
    :cond_10
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 465
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getMyLocationResult()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_11
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResultsList:Landroid/widget/ListView;

    new-instance v1, Lorg/inaturalist/android/PlaceAdapter;

    iget-object v4, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4}, Lorg/inaturalist/android/PlaceAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 471
    :goto_7
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_12

    if-nez v0, :cond_12

    .line 472
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResultsList:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 473
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mNoResultsFound:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 475
    :cond_12
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResultsList:Landroid/widget/ListView;

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 476
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mNoResultsFound:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :goto_8
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResultsList:Landroid/widget/ListView;

    new-instance v0, Lorg/inaturalist/android/ExploreSearchActivity$6;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreSearchActivity$6;-><init>(Lorg/inaturalist/android/ExploreSearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 511
    :goto_9
    iput-boolean v3, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mRefreshingUi:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 102
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 107
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 110
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    .line 111
    sget-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"preferred_common_name\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1002bb

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"name\": \"Plantae\", \"iconic_taxon_name\": \"Plantae\", \"id\": 47126, \"rank_level\": 70, \"rank\": \"kingdom\" }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"preferred_common_name\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100211

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"name\": \"Mammalia\", \"iconic_taxon_name\": \"Mammalia\", \"id\": 40151, \"rank_level\": 50, \"rank\": \"class\" }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"preferred_common_name\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1001d0

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"name\": \"Insecta\", \"iconic_taxon_name\": \"Insecta\", \"id\": 47158, \"rank_level\": 50, \"rank\": \"class\" }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"preferred_common_name\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f1002fa

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"name\": \"Reptilia\", \"iconic_taxon_name\": \"Reptilia\", \"id\": 26036, \"rank_level\": 50, \"rank\": \"class\" }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"preferred_common_name\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100168

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"name\": \"Actinopterygii\", \"iconic_taxon_name\": \"Actinopterygii\", \"id\": 47178, \"rank_level\": 50, \"rank\": \"class\" }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"preferred_common_name\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f10021d

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"name\": \"Mollusca\", \"iconic_taxon_name\": \"Mollusca\", \"id\": 47115, \"rank_level\": 60, \"rank\": \"phylum\" }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"preferred_common_name\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f100044

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"name\": \"Amphibia\", \"iconic_taxon_name\": \"Amphibia\", \"id\": 20978, \"rank_level\": 50, \"rank\": \"class\" }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"preferred_common_name\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f10016e

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"name\": \"Fungi\", \"iconic_taxon_name\": \"Fungi\", \"id\": 47170, \"rank_level\": 70, \"rank\": \"kingdom\" }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"preferred_common_name\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f10006a

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"name\": \"Aves\", \"iconic_taxon_name\": \"Aves\", \"id\": 3, \"rank_level\": 50, \"rank\": \"class\" }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lorg/inaturalist/android/ExploreSearchActivity;->DEFAULT_TAXON_RESULTS:Ljava/util/ArrayList;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"preferred_common_name\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f10005d

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"name\": \"Arachnida\", \"iconic_taxon_name\": \"Arachnida\", \"id\": 47119, \"rank_level\": 50, \"rank\": \"class\" }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const v0, 0x7f0d005f

    .line 125
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ExploreSearchActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResults:Ljava/util/ArrayList;

    const-string p1, "search_filters"

    .line 131
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 p1, 0x0

    .line 132
    iput p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    .line 136
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mHandler:Landroid/os/Handler;

    const p1, 0x7f0a0384

    .line 138
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a00b3

    .line 139
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearTaxon:Landroid/widget/ImageView;

    const p1, 0x7f0a0383

    .line 140
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    const p1, 0x7f0a01d8

    .line 141
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a00b0

    .line 142
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearLocation:Landroid/widget/ImageView;

    const p1, 0x7f0a01d6

    .line 143
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    const p1, 0x7f0a030b

    .line 145
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchButton:Landroid/widget/ImageButton;

    const p1, 0x7f0a0314

    .line 146
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mResultsList:Landroid/widget/ListView;

    const p1, 0x7f0a01cc

    .line 147
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLoadingResults:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0253

    .line 148
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mNoResultsFound:Landroid/widget/TextView;

    .line 151
    new-instance p1, Lorg/inaturalist/android/ExploreSearchActivity$1;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ExploreSearchActivity$1;-><init>(Lorg/inaturalist/android/ExploreSearchActivity;)V

    .line 190
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    new-instance p1, Lorg/inaturalist/android/ExploreSearchActivity$2;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ExploreSearchActivity$2;-><init>(Lorg/inaturalist/android/ExploreSearchActivity;)V

    .line 204
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 205
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 207
    new-instance p1, Lorg/inaturalist/android/ExploreSearchActivity$3;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ExploreSearchActivity$3;-><init>(Lorg/inaturalist/android/ExploreSearchActivity;)V

    .line 237
    new-instance v0, Lorg/inaturalist/android/ExploreSearchActivity$4;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreSearchActivity$4;-><init>(Lorg/inaturalist/android/ExploreSearchActivity;)V

    .line 254
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mLocationEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 255
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 257
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearTaxon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mClearLocation:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchButton:Landroid/widget/ImageButton;

    new-instance v0, Lorg/inaturalist/android/ExploreSearchActivity$5;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreSearchActivity$5;-><init>(Lorg/inaturalist/android/ExploreSearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 297
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 298
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonResultsReceiver:Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 303
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 304
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 308
    :cond_0
    new-instance v0, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;-><init>(Lorg/inaturalist/android/ExploreSearchActivity;Lorg/inaturalist/android/ExploreSearchActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonResultsReceiver:Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;

    .line 309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "search_taxa_result"

    .line 310
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "search_places_result"

    .line 311
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity;->mTaxonResultsReceiver:Lorg/inaturalist/android/ExploreSearchActivity$TaxonSearchReceiver;

    invoke-static {v1, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 314
    invoke-direct {p0, v0}, Lorg/inaturalist/android/ExploreSearchActivity;->refreshViewState(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 292
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 87
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 94
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 95
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
