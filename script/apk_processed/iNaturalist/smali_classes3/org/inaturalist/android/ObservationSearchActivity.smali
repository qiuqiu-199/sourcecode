.class public Lorg/inaturalist/android/ObservationSearchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ObservationSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ObervationSearchActivity"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mCurrentSearchString:Ljava/lang/String;

.field private mLastTypingTime:I

.field private mListView:Landroid/widget/ListView;

.field private mNoResults:Landroid/widget/TextView;

.field private mObservationsAdapter:Landroid/widget/ListAdapter;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSearchResultsReceiver:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mCurrentSearchString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mLastTypingTime:I

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mNoResults:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/ObservationSearchActivity;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ObservationSearchActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ListAdapter;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mObservationsAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lorg/inaturalist/android/ObservationSearchActivity;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mObservationsAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lorg/inaturalist/android/ObservationSearchActivity;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mCurrentSearchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lorg/inaturalist/android/ObservationSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mCurrentSearchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lorg/inaturalist/android/ObservationSearchActivity;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/inaturalist/android/ObservationSearchActivity;J)J
    .locals 0

    .line 48
    iput-wide p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/inaturalist/android/ObservationSearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationSearchActivity;->performOnlineSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ListView;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 322
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 323
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
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

.method private performOnlineSearch(Ljava/lang/String;)V
    .locals 4

    .line 216
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mNoResults:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_USER_OBSERVATIONS:Ljava/lang/String;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "query"

    .line 221
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private saveObservationLocally(Lorg/json/JSONObject;)Landroid/net/Uri;
    .locals 12

    .line 260
    new-instance v0, Lorg/inaturalist/android/Observation;

    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 261
    invoke-virtual {v0}, Lorg/inaturalist/android/Observation;->getContentValues()Landroid/content/ContentValues;

    move-result-object p1

    const-string v1, "_synced_at"

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "last_comments_count"

    .line 263
    iget-object v2, v0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "last_identifications_count"

    .line 264
    iget-object v2, v0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 268
    :goto_0
    iget-object v3, v0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 269
    iget-object v3, v0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/inaturalist/android/ObservationPhoto;

    .line 270
    iget-object v4, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    iput-object v4, v3, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    .line 272
    invoke-virtual {v3}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "ObervationSearchActivity"

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OP - searchObservationLocally - Setting _SYNCED_AT - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "_synced_at"

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "_observation_id"

    .line 275
    iget-object v6, v3, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "_photo_id"

    .line 276
    iget-object v6, v3, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "_id"

    .line 277
    iget-object v3, v3, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-object v2, v0, Lorg/inaturalist/android/Observation;->projects:Lorg/inaturalist/android/SerializableJSONArray;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/inaturalist/android/Observation;->projects:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v2}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, v0, Lorg/inaturalist/android/Observation;->projects:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v2}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 286
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 287
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 288
    new-instance v5, Lorg/inaturalist/android/ProjectObservation;

    new-instance v6, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v6, v4}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lorg/inaturalist/android/ProjectObservation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 289
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Lorg/inaturalist/android/ProjectObservation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 294
    :cond_1
    iget-object v2, v0, Lorg/inaturalist/android/Observation;->field_values:Lorg/inaturalist/android/SerializableJSONArray;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/inaturalist/android/Observation;->field_values:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v2}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 295
    iget-object v0, v0, Lorg/inaturalist/android/Observation;->field_values:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 297
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 298
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 299
    new-instance v3, Lorg/inaturalist/android/ProjectFieldValue;

    new-instance v4, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v4, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lorg/inaturalist/android/ProjectFieldValue;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 301
    invoke-virtual {v3}, Lorg/inaturalist/android/ProjectFieldValue;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v4, "_synced_at"

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 303
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 305
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lorg/inaturalist/android/ProjectField;->PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "field_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "_id DESC"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 307
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 309
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_PROJECT_FIELD:Ljava/lang/String;

    const/4 v6, 0x0

    const-class v7, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v4, v5, v6, p0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "field_id"

    .line 310
    iget-object v3, v3, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 311
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 313
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method


# virtual methods
.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const v0, 0x102000a

    .line 332
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mListView:Landroid/widget/ListView;

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 118
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 122
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 127
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00aa

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v1, 0x7f08014e

    .line 130
    invoke-virtual {p1, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const p1, 0x7f0d00e6

    .line 132
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationSearchActivity;->setContentView(I)V

    const p1, 0x7f0a02ad

    .line 134
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 135
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const p1, 0x1020004

    .line 137
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mNoResults:Landroid/widget/TextView;

    .line 138
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mNoResults:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object p1

    const-string v2, "(_synced_at IS NULL"

    if-eqz p1, :cond_1

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " OR user_login = \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") AND (is_deleted = 0 OR is_deleted is NULL)"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const v2, 0x7f0a0316

    .line 153
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 155
    new-instance v2, Lorg/inaturalist/android/ObservationSearchActivity$1;

    invoke-direct {v2, p0, p1}, Lorg/inaturalist/android/ObservationSearchActivity$1;-><init>(Lorg/inaturalist/android/ObservationSearchActivity;Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lorg/inaturalist/android/ObservationSearchActivity$2;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/ObservationSearchActivity$2;-><init>(Lorg/inaturalist/android/ObservationSearchActivity;Landroid/widget/EditText;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 212
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 226
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mObservationsAdapter:Landroid/widget/ListAdapter;

    instance-of p1, p1, Lorg/inaturalist/android/ObservationCursorAdapter;

    if-eqz p1, :cond_1

    .line 228
    sget-object p1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 229
    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mObservationsAdapter:Landroid/widget/ListAdapter;

    check-cast p2, Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->isLocked(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mObservationsAdapter:Landroid/widget/ListAdapter;

    check-cast p2, Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {p2, p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->isLocked(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p2}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result p2

    if-nez p2, :cond_3

    .line 230
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    const-class p4, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p2, p3, p1, p0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Lorg/inaturalist/android/ObservationSearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "id"

    .line 235
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 237
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v3, "id = ?"

    const/4 p3, 0x1

    new-array v4, p3, [Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 238
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_2

    .line 240
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p1, "_id"

    .line 241
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 242
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 243
    sget-object p1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 244
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    const-class p4, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p2, p3, p1, p0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Lorg/inaturalist/android/ObservationSearchActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 249
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 252
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationSearchActivity;->saveObservationLocally(Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object p1

    .line 254
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    const-class p4, Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p2, p3, p1, p0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Lorg/inaturalist/android/ObservationSearchActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 88
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mSearchResultsReceiver:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 74
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 75
    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 77
    :cond_0
    new-instance v0, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;-><init>(Lorg/inaturalist/android/ObservationSearchActivity;Lorg/inaturalist/android/ObservationSearchActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mSearchResultsReceiver:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "user_search_observations_result"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lorg/inaturalist/android/ObservationSearchActivity;->mSearchResultsReceiver:Lorg/inaturalist/android/ObservationSearchActivity$SearchResultsReceiver;

    invoke-static {v1, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 69
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 96
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 338
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
