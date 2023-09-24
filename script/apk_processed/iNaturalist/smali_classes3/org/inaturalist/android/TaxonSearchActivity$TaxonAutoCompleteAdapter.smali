.class Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TaxonSearchActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/TaxonSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaxonAutoCompleteAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentSearchString:Ljava/lang/String;

.field private mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/TaxonSearchActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/TaxonSearchActivity;Landroid/content/Context;I)V
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, p3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 192
    iput-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mContext:Landroid/content/Context;

    .line 194
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mResultList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Landroid/content/Context;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mResultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mResultList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mCurrentSearchString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mCurrentSearchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Z)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->toggleLoading(Z)V

    return-void
.end method

.method private toggleLoading(Z)V
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    new-instance v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$1;-><init>(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Z)V

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/TaxonSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 246
    new-instance v0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$2;-><init>(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)V

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    move-object/from16 v1, p0

    .line 330
    iget-object v0, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    const v3, 0x7f0d00e8

    move-object/from16 v4, p3

    .line 331
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 332
    iget-object v0, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mResultList:Ljava/util/ArrayList;

    move/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/json/JSONObject;

    const v0, 0x7f0a038d

    .line 336
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const v0, 0x7f0a038a

    .line 337
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const v0, 0x7f0a0392

    .line 338
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const v0, 0x7f0a03e4

    .line 339
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v8, 0x7f0a0322

    .line 340
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a00ce

    .line 341
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    .line 343
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    new-instance v0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$3;

    invoke-direct {v0, v1, v3}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$3;-><init>(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Landroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    if-nez v4, :cond_0

    .line 354
    iget-object v2, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    const v4, 0x7f080391

    .line 355
    invoke-virtual {v2, v4}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 358
    invoke-virtual {v2, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    const v2, 0x7f10037a

    .line 361
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 362
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 366
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v3

    :cond_0
    const-string v8, "is_custom"

    .line 370
    invoke-virtual {v4, v8, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const v11, 0x7f08027d

    if-eqz v8, :cond_1

    .line 372
    iget-object v2, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 373
    invoke-virtual {v2, v11}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 374
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 375
    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    .line 376
    invoke-virtual {v2, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    const-string v2, "name"

    .line 378
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 383
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v3

    .line 392
    :cond_1
    iget-object v0, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity;->access$700(Lorg/inaturalist/android/TaxonSearchActivity;)I

    move-result v0

    const/4 v8, -0x1

    const/4 v12, 0x1

    if-gt v0, v8, :cond_3

    iget-object v0, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity;->access$800(Lorg/inaturalist/android/TaxonSearchActivity;)I

    move-result v0

    if-le v0, v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 393
    :cond_3
    :goto_0
    iget-object v0, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v15, v0, [Ljava/lang/String;

    const-string v0, "_observation_id"

    aput-object v0, v15, v2

    const-string v0, "observation_id"

    aput-object v0, v15, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(observation_id = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    .line 395
    invoke-static {v8}, Lorg/inaturalist/android/TaxonSearchActivity;->access$700(Lorg/inaturalist/android/TaxonSearchActivity;)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " OR _observation_id = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v8}, Lorg/inaturalist/android/TaxonSearchActivity;->access$800(Lorg/inaturalist/android/TaxonSearchActivity;)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const-string v18, "position ASC, id ASC, _id ASC"

    .line 393
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 398
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 399
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 401
    :goto_2
    iget-object v0, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity;->access$900(Lorg/inaturalist/android/TaxonSearchActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 403
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v13, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v13}, Lorg/inaturalist/android/TaxonSearchActivity;->access$900(Lorg/inaturalist/android/TaxonSearchActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez v8, :cond_6

    const-string v13, "observation_photos"

    .line 404
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "observation_photos"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v8, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_4
    if-nez v8, :cond_8

    .line 412
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_8
    new-instance v0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$4;

    invoke-direct {v0, v1, v4}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$4;-><init>(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    new-instance v0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;

    invoke-direct {v0, v1, v4, v8}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;-><init>(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Lorg/json/JSONObject;Z)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v0, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity;->access$1300(Lorg/inaturalist/android/TaxonSearchActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 444
    invoke-static {v6, v4}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 445
    iget-object v0, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 447
    :cond_9
    invoke-static {v7, v4}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 448
    iget-object v0, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    const-string v0, "default_photo"

    .line 452
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "default_photo"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "default_photo"

    .line 453
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 454
    iget-object v2, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    const-string v6, "square_url"

    .line 455
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 456
    invoke-static {v4}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 459
    invoke-virtual {v0, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_6

    .line 461
    :cond_a
    iget-object v0, v1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 462
    invoke-virtual {v0, v11}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 465
    invoke-virtual {v0, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 469
    :goto_6
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v3
.end method
