.class Lorg/inaturalist/android/UserActivitiesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserActivitiesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;,
        Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;,
        Lorg/inaturalist/android/UserActivitiesAdapter$OnClickListener;,
        Lorg/inaturalist/android/UserActivitiesAdapter$ClickSpan;,
        Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserActivitiesAdapter"


# instance fields
.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mContext:Landroid/content/Context;

.field private mObsIdBeingDownloaded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mObsIdToView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mObservationReceiver:Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;

.field private final mOnUpdateViewed:Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;

.field private mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;",
            ")V"
        }
    .end annotation

    const v0, 0x1090003

    .line 74
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 76
    iput-object p3, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mOnUpdateViewed:Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;

    .line 77
    iput-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    .line 78
    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 79
    iput-object p2, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mResultList:Ljava/util/ArrayList;

    .line 80
    iget-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mResultList:Ljava/util/ArrayList;

    new-instance p2, Lorg/inaturalist/android/UserActivitiesAdapter$1;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/UserActivitiesAdapter$1;-><init>(Lorg/inaturalist/android/UserActivitiesAdapter;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    invoke-virtual {p0}, Lorg/inaturalist/android/UserActivitiesAdapter;->registerReceivers()V

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdToView:Ljava/util/Map;

    .line 94
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdBeingDownloaded:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/UserActivitiesAdapter;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/UserActivitiesAdapter;)Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mOnUpdateViewed:Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/UserActivitiesAdapter;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/UserActivitiesAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mResultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/UserActivitiesAdapter;)Ljava/util/Map;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdToView:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/UserActivitiesAdapter;ILandroid/view/View;Lorg/inaturalist/android/BetterJSONObject;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/inaturalist/android/UserActivitiesAdapter;->loadObsImage(ILandroid/view/View;Lorg/inaturalist/android/BetterJSONObject;I)V

    return-void
.end method

.method private loadObsImage(ILandroid/view/View;Lorg/inaturalist/android/BetterJSONObject;I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v4, "UserActivitiesAdapter"

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": loadObsImage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f0a025f

    .line 224
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a03d2

    .line 225
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a01b7

    .line 226
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    const v7, 0x7f0a01c8

    .line 227
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 229
    new-instance v8, Lorg/inaturalist/android/UserActivitiesAdapter$4;

    invoke-direct {v8, v0, v7, v2}, Lorg/inaturalist/android/UserActivitiesAdapter$4;-><init>(Lorg/inaturalist/android/UserActivitiesAdapter;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 236
    iget-object v8, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v12, "id = ?"

    const/4 v8, 0x1

    new-array v13, v8, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 237
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    const v11, 0x7f080064

    const/16 v12, 0x8

    if-nez v10, :cond_3

    .line 239
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const v9, 0x7f08027d

    .line 242
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    invoke-virtual {v6, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    invoke-virtual {v7, v15}, Landroid/view/View;->setVisibility(I)V

    .line 245
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    invoke-virtual {v2, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 248
    iget-object v4, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdBeingDownloaded:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdBeingDownloaded:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "UserActivitiesAdapter"

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": Downloading"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    :cond_1
    :goto_0
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_AND_SAVE_OBSERVATION:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    const-class v9, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v4, v5, v6, v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "observation_id"

    .line 250
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    iget-object v5, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v4, "UserActivitiesAdapter"

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": Start download: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdBeingDownloaded:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_1
    iget-object v4, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdBeingDownloaded:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v4, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdToView:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 261
    iget-object v4, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdToView:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_2
    iget-object v4, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdToView:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 264
    new-instance v4, Landroid/util/Pair;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    const-string v10, "UserActivitiesAdapter"

    .line 268
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ": Showing"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v10, Lorg/inaturalist/android/Observation;

    invoke-direct {v10, v9}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    .line 271
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 273
    invoke-virtual {v6, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 274
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v5, "viewed"

    move-object/from16 v6, p3

    .line 276
    invoke-virtual {v6, v5}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const v11, 0x7f080065

    :goto_2
    invoke-virtual {v2, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 280
    iget-object v5, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v18, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v19, "observation_id = ?"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v15

    const-string v21, "position ASC, id ASC, _id ASC"

    move-object/from16 v20, v5

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 281
    iget-object v5, v10, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    invoke-static {v5}, Lorg/inaturalist/android/ObservationCursorAdapter;->getIconicTaxonDrawable(Ljava/lang/String;)I

    move-result v5

    .line 283
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 285
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 288
    :cond_5
    new-instance v6, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v6, v1}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    .line 290
    iget-object v7, v6, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 292
    iget-object v7, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    iget-object v6, v6, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    .line 293
    invoke-virtual {v7, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    goto :goto_3

    .line 296
    :cond_6
    iget-object v7, v0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    iget-object v6, v6, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v7, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 300
    :goto_3
    invoke-virtual {v6, v5}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 301
    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 302
    invoke-virtual {v5}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 303
    invoke-virtual {v5, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 305
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 307
    new-instance v1, Lorg/inaturalist/android/UserActivitiesAdapter$5;

    invoke-direct {v1, v0, v10, v3, v2}, Lorg/inaturalist/android/UserActivitiesAdapter$5;-><init>(Lorg/inaturalist/android/UserActivitiesAdapter;Lorg/inaturalist/android/Observation;ILandroid/view/View;)V

    .line 356
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public clickify(Landroid/widget/TextView;Ljava/lang/String;Lorg/inaturalist/android/UserActivitiesAdapter$OnClickListener;)V
    .locals 4

    .line 385
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 386
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    new-instance v2, Lorg/inaturalist/android/UserActivitiesAdapter$ClickSpan;

    invoke-direct {v2, p0, p3}, Lorg/inaturalist/android/UserActivitiesAdapter$ClickSpan;-><init>(Lorg/inaturalist/android/UserActivitiesAdapter;Lorg/inaturalist/android/UserActivitiesAdapter$OnClickListener;)V

    .line 389
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    .line 390
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    return-void

    .line 393
    :cond_0
    instance-of v1, v0, Landroid/text/Spannable;

    const/16 v3, 0x21

    if-eqz v1, :cond_1

    .line 394
    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v0, v2, p3, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 396
    :cond_1
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 397
    invoke-virtual {v0, v2, p3, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 398
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 402
    instance-of p2, p2, Landroid/text/method/LinkMovementMethod;

    if-nez p2, :cond_3

    .line 403
    :cond_2
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 103
    iget-object v1, v7, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const v3, 0x7f0d00f1

    move-object/from16 v4, p3

    .line 104
    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p2

    .line 105
    :goto_0
    new-instance v9, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v1, v7, Lorg/inaturalist/android/UserActivitiesAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {v9, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const v1, 0x7f0a03d2

    .line 108
    :try_start_0
    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    const v1, 0x7f0a025f

    .line 109
    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f0a0030

    .line 110
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v1, v7, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    const-string v4, "created_at"

    invoke-virtual {v9, v4}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/inaturalist/android/CommentsIdsAdapter;->formatIdDate(Landroid/content/Context;Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "resource_id"

    .line 118
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v1, "viewed"

    .line 121
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080064

    goto :goto_1

    :cond_1
    const v1, 0x7f080065

    :goto_1
    invoke-virtual {v8, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v1, "notifier_type"

    .line 123
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Identification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-eqz v1, :cond_3

    const-string v1, "identification"

    .line 126
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v14, "taxon"

    .line 127
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 129
    iget-object v15, v7, Lorg/inaturalist/android/UserActivitiesAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v15}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 130
    invoke-static {v14, v2}, Lorg/inaturalist/android/TaxonUtils;->getTaxonScientificNameHtml(Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 132
    :cond_2
    iget-object v15, v7, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v15, v14}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v14

    :goto_2
    const-string v15, "user"

    .line 134
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v15, "login"

    .line 135
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "icon_url"

    .line 136
    invoke-virtual {v1, v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 138
    iget-object v4, v7, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f10038d

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v15, v6, v2

    const/4 v2, 0x1

    aput-object v14, v6, v2

    const/4 v2, 0x2

    aput-object v5, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v14, v1

    goto :goto_3

    :cond_3
    const-string v1, "notifier_type"

    .line 141
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Comment"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "comment"

    .line 144
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "user"

    .line 145
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v4, "login"

    .line 146
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "icon_url"

    .line 147
    invoke-virtual {v14, v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v4, "body"

    .line 148
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    iget-object v1, v7, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f10038c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v15, v4, v2

    const/4 v2, 0x1

    aput-object v6, v4, v2

    const/4 v2, 0x2

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v3}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    .line 155
    new-instance v4, Lorg/inaturalist/android/UserActivitiesAdapter$2;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v16, v13

    move-object v13, v4

    move-object v4, v15

    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/UserActivitiesAdapter$2;-><init>(Lorg/inaturalist/android/UserActivitiesAdapter;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    move-object/from16 v13, v16

    goto :goto_3

    :cond_4
    move-object v14, v13

    move-object v15, v14

    :goto_3
    if-eqz v15, :cond_6

    const v1, 0x7f080233

    if-eqz v13, :cond_5

    .line 179
    iget-object v2, v7, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 180
    invoke-virtual {v2, v13}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;

    invoke-direct {v2}, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;-><init>()V

    .line 182
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 183
    invoke-virtual {v1, v10}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_4

    .line 185
    :cond_5
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :goto_4
    new-instance v1, Lorg/inaturalist/android/UserActivitiesAdapter$3;

    invoke-direct {v1, v7, v14}, Lorg/inaturalist/android/UserActivitiesAdapter$3;-><init>(Lorg/inaturalist/android/UserActivitiesAdapter;Lorg/json/JSONObject;)V

    .line 200
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_6
    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v7, v1, v8, v9, v0}, Lorg/inaturalist/android/UserActivitiesAdapter;->loadObsImage(ILandroid/view/View;Lorg/inaturalist/android/BetterJSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object v8
.end method

.method public registerReceivers()V
    .locals 3

    .line 445
    new-instance v0, Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;-><init>(Lorg/inaturalist/android/UserActivitiesAdapter;Lorg/inaturalist/android/UserActivitiesAdapter$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObservationReceiver:Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;

    .line 446
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_AND_SAVE_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObservationReceiver:Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;

    iget-object v2, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    return-void
.end method

.method public unregisterReceivers()V
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObservationReceiver:Lorg/inaturalist/android/UserActivitiesAdapter$ObservationReceiver;

    iget-object v1, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/UserActivitiesAdapter;->mObsIdBeingDownloaded:Ljava/util/Map;

    return-void
.end method
