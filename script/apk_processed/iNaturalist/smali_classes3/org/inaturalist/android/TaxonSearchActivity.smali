.class public Lorg/inaturalist/android/TaxonSearchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TaxonSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;
    }
.end annotation


# static fields
.field public static final FIELD_ID:Ljava/lang/String; = "field_id"

.field public static final ICONIC_TAXON_NAME:Ljava/lang/String; = "iconic_taxon_name"

.field public static final ID_NAME:Ljava/lang/String; = "id_name"

.field public static final ID_PIC_URL:Ljava/lang/String; = "id_url"

.field public static final IS_CUSTOM:Ljava/lang/String; = "is_custom"

.field private static final LOG_TAG:Ljava/lang/String; = "TaxonSearchActivity"

.field public static final OBSERVATION_ID:Ljava/lang/String; = "observation_id"

.field public static final OBSERVATION_ID_INTERNAL:Ljava/lang/String; = "observation_id_internal"

.field public static final OBSERVATION_JSON:Ljava/lang/String; = "observation_json"

.field public static final RANK:Ljava/lang/String; = "rank"

.field public static final RANK_LEVEL:Ljava/lang/String; = "rank_level"

.field public static final SHOW_UNKNOWN:Ljava/lang/String; = "show_unknown"

.field public static final SPECIES_GUESS:Ljava/lang/String; = "species_guess"

.field public static final SUGGEST_ID:Ljava/lang/String; = "suggest_id"

.field public static final TAXON_ID:Ljava/lang/String; = "taxon_id"

.field public static final TAXON_NAME:Ljava/lang/String; = "taxon_name"

.field public static final UNKNOWN_TAXON_ID:I = -0x1

.field private static final VIEW_TAXON_REQUEST_CODE:I = 0x1000


# instance fields
.field private mAdapter:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mFieldId:I

.field private mLastTaxon:Lorg/json/JSONObject;

.field private mLastTime:J

.field private mListView:Landroid/widget/ListView;

.field private mNoResults:Landroid/widget/TextView;

.field private mObsId:I

.field private mObsIdInternal:I

.field private mObservationJson:Ljava/lang/String;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mShowUnknown:Z

.field public mSuggestId:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mLastTime:J

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/TaxonSearchActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/TaxonSearchActivity;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/TaxonSearchActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity;->compareTaxon(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1202(Lorg/inaturalist/android/TaxonSearchActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mLastTaxon:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/TaxonSearchActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/inaturalist/android/TaxonSearchActivity;)Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mAdapter:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/TaxonSearchActivity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity;->autocomplete(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/TaxonSearchActivity;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mShowUnknown:Z

    return p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/TaxonSearchActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObsId:I

    return p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/TaxonSearchActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObsIdInternal:I

    return p0
.end method

.method static synthetic access$900(Lorg/inaturalist/android/TaxonSearchActivity;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObservationJson:Ljava/lang/String;

    return-object p0
.end method

.method private autocomplete(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 131
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/taxa/autocomplete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?q="

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "utf8"

    .line 133
    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "notification"

    .line 135
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 136
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 137
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "&locale="

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :try_start_1
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->getJWTToken()Ljava/lang/String;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "Authorization"

    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    .line 150
    new-array v3, v3, [C

    .line 151
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2

    .line 152
    invoke-virtual {v0, v3, v6, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 163
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 168
    :cond_3
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "results"

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v6, v1, :cond_4

    .line 174
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v1

    :goto_2
    const-string v1, "TaxonSearchActivity"

    const-string v2, "Cannot process JSON results"

    .line 177
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object p1, v1

    :goto_3
    :try_start_4
    const-string v2, "TaxonSearchActivity"

    const-string v3, "Error connecting to Places API"

    .line 159
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_5

    .line 163
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v1

    :catch_5
    move-exception v0

    move-object p1, v1

    :goto_4
    :try_start_5
    const-string v2, "TaxonSearchActivity"

    const-string v3, "Error processing Places API URL"

    .line 156
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_6

    .line 163
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, p1

    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0
.end method

.method private compareTaxon(Lorg/json/JSONObject;)V
    .locals 4

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "suggestion_index"

    const/4 v2, 0x0

    .line 680
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObservationJson:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "observation_json"

    iget-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObservationJson:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    :cond_0
    iget v1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObsIdInternal:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    const-string v1, "observation_id_internal"

    iget v3, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObsIdInternal:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    :cond_1
    iget v1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObsId:I

    if-le v1, v2, :cond_2

    const-string v1, "observation_id"

    iget v2, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObsId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 684
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "taxon"

    .line 686
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 688
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 690
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 691
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v2, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-static {p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->setTaxonSuggestions(Ljava/util/List;)V

    const/16 p1, 0x1000

    .line 693
    invoke-virtual {p0, v0, p1}, Lorg/inaturalist/android/TaxonSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string v0, "preferred_common_name"

    const-string v1, "matched_term"

    .line 623
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 616
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 617
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
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
.method protected getListAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .line 641
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 642
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 643
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const v0, 0x102000a

    .line 631
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mListView:Landroid/widget/ListView;

    .line 633
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 659
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 664
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 665
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    .line 666
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 667
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/TaxonSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 669
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->finish()V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 672
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mLastTaxon:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity;->compareTaxon(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonSearchActivity;->setResult(I)V

    .line 495
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 496
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->finishAfterTransition()V

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 504
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 505
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 507
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 509
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 510
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 511
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 512
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 514
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00e7

    const/4 v3, 0x0

    .line 515
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 516
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v2, 0x7f08014e

    .line 517
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const v0, 0x7f0d00e6

    .line 519
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonSearchActivity;->setContentView(I)V

    .line 521
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "field_id"

    const/4 v3, 0x0

    .line 522
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mFieldId:I

    const v2, 0x7f0a02ad

    .line 524
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/TaxonSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 525
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const v2, 0x1020004

    .line 527
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/TaxonSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mNoResults:Landroid/widget/TextView;

    .line 528
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mNoResults:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_1

    const-string p1, "suggest_id"

    .line 531
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mSuggestId:Z

    const-string p1, "observation_id_internal"

    const/4 v2, -0x1

    .line 533
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObsIdInternal:I

    const-string p1, "observation_id"

    .line 534
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObsId:I

    const-string p1, "observation_json"

    .line 535
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mObservationJson:Ljava/lang/String;

    .line 538
    :cond_1
    new-instance p1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0d00e5

    invoke-direct {p1, p0, v2, v4}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;-><init>(Lorg/inaturalist/android/TaxonSearchActivity;Landroid/content/Context;I)V

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mAdapter:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    const p1, 0x7f0a0316

    .line 539
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 541
    new-instance v1, Lorg/inaturalist/android/TaxonSearchActivity$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/TaxonSearchActivity$1;-><init>(Lorg/inaturalist/android/TaxonSearchActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v1, "species_guess"

    .line 552
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "show_unknown"

    .line 553
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mShowUnknown:Z

    if-eqz v1, :cond_2

    .line 555
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 556
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 558
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 560
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/inaturalist/android/TaxonSearchActivity$2;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity$2;-><init>(Lorg/inaturalist/android/TaxonSearchActivity;Landroid/widget/EditText;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 569
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mAdapter:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 478
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 489
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 481
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity;->setResult(I)V

    .line 482
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->finishAfterTransition()V

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 110
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 651
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 652
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 104
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 117
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method public selectTaxon(Lorg/json/JSONObject;)V
    .locals 7

    .line 574
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, -0x1

    if-eqz p1, :cond_2

    const-string v3, "is_custom"

    const/4 v4, 0x0

    .line 578
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "id_name"

    const-string v4, "name"

    .line 580
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_custom"

    const/4 v3, 0x1

    .line 581
    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v3, "id_name"

    .line 583
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity;->getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "taxon_name"

    const-string v5, "name"

    .line 584
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "iconic_taxon_name"

    const-string v5, "iconic_taxon_name"

    .line 585
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "default_photo"

    .line 586
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "default_photo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "id_url"

    const-string v5, "default_photo"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "square_url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "is_custom"

    .line 587
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "taxon_id"

    const-string v4, "id"

    .line 588
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "rank_level"

    const-string v4, "rank_level"

    .line 589
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "rank"

    const-string v4, "rank"

    .line 590
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "field_id"

    .line 593
    iget v3, p0, Lorg/inaturalist/android/TaxonSearchActivity;->mFieldId:I

    invoke-virtual {v1, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string p1, "taxon_id"

    .line 597
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 602
    invoke-virtual {p0, v2, v0}, Lorg/inaturalist/android/TaxonSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 603
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3

    .line 604
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->finishAfterTransition()V

    goto :goto_2

    .line 606
    :cond_3
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 611
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 637
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
