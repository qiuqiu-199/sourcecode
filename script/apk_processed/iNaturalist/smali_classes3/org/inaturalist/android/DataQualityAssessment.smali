.class public Lorg/inaturalist/android/DataQualityAssessment;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DataQualityAssessment.java"

# interfaces
.implements Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;,
        Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;,
        Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;
    }
.end annotation


# static fields
.field public static final OBSERVATION:Ljava/lang/String; = "observation"

.field private static final TAG:Ljava/lang/String; = "DataQualityAssessment"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mChangeDataQualityMetricsReceiver:Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;

.field private mDataQualityList:Landroid/widget/ListView;

.field private mDataQualityMetricsReceiver:Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mIdCanBeImprovedContainer:Landroid/view/ViewGroup;

.field private mIdCanBeImprovedIcon:Landroid/widget/ImageView;

.field private mIdCanBeImprovedReceiver:Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;

.field private mIdCanBeImprovedText:Landroid/widget/TextView;

.field private mIdCannotBeImprovedContainer:Landroid/view/ViewGroup;

.field private mIdCannotBeImprovedIcon:Landroid/widget/ImageView;

.field private mIdCannotBeImprovedText:Landroid/widget/TextView;

.field private mLoadingIdCanBeImproved:Landroid/view/ViewGroup;

.field public mMetricsVotes:Lorg/json/JSONArray;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONArrayBundler;
    .end annotation
.end field

.field public mObservation:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 51
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mMetricsVotes:Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/DataQualityAssessment;)Landroid/view/ViewGroup;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mLoadingIdCanBeImproved:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/DataQualityAssessment;)Landroid/view/ViewGroup;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/DataQualityAssessment;)Landroid/view/ViewGroup;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/DataQualityAssessment;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/DataQualityAssessment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/inaturalist/android/DataQualityAssessment;->refreshMetrics()V

    return-void
.end method

.method static synthetic access$800(Lorg/inaturalist/android/DataQualityAssessment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/inaturalist/android/DataQualityAssessment;->refreshIdCanBeImproved()V

    return-void
.end method

.method private refreshIdCanBeImproved()V
    .locals 12

    const-string v0, "DataQualityAssessment"

    const-string v1, "refreshIdCanBeImproved"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mLoadingIdCanBeImproved:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedText:Landroid/widget/TextView;

    const v1, 0x7f1003b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 253
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedIcon:Landroid/widget/ImageView;

    const v4, 0x7f080160

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedContainer:Landroid/view/ViewGroup;

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedText:Landroid/widget/TextView;

    const v5, 0x7f100262

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 258
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedContainer:Landroid/view/ViewGroup;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v4, "votes"

    invoke-virtual {v0, v4}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 273
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v4, v8, :cond_7

    .line 274
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, "vote_scope"

    .line 276
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "needs_id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_5

    :cond_1
    const-string v10, "vote_flag"

    .line 280
    invoke-virtual {v8, v10, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "user"

    .line 282
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v11, "login"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lorg/inaturalist/android/DataQualityAssessment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v11}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v10, :cond_2

    .line 284
    iget-object v8, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedText:Landroid/widget/TextView;

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedText:Landroid/widget/TextView;

    :goto_2
    invoke-virtual {v8, v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz v10, :cond_3

    .line 285
    iget-object v8, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedIcon:Landroid/widget/ImageView;

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedIcon:Landroid/widget/ImageView;

    :goto_3
    const v11, 0x7f080161

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v10, :cond_4

    .line 286
    iget-object v8, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedContainer:Landroid/view/ViewGroup;

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedContainer:Landroid/view/ViewGroup;

    :goto_4
    new-instance v11, Ljava/lang/Boolean;

    invoke-direct {v11, v9}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    :cond_5
    if-eqz v10, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    if-lez v6, :cond_8

    .line 297
    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedText:Landroid/widget/TextView;

    const-string v4, "%s (%d)"

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/DataQualityAssessment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    if-lez v7, :cond_9

    .line 300
    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedText:Landroid/widget/TextView;

    const-string v2, "%s (%d)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lorg/inaturalist/android/DataQualityAssessment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v9

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method private refreshMetrics()V
    .locals 11

    const-string v0, "DataQualityAssessment"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshMetrics - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment;->mMetricsVotes:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v1, Lorg/inaturalist/android/DataQualityItem;

    const-string v2, "date_specified"

    const/4 v3, 0x0

    const v4, 0x7f08008f

    const v5, 0x7f10011a

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/inaturalist/android/DataQualityItem;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v1, Lorg/inaturalist/android/DataQualityItem;

    const-string v2, "location"

    const v4, 0x7f0802f4

    const v5, 0x7f100206

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/inaturalist/android/DataQualityItem;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v1, Lorg/inaturalist/android/DataQualityItem;

    const-string v2, "photos"

    const v4, 0x7f080126

    const v5, 0x7f100180

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/inaturalist/android/DataQualityItem;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v1, Lorg/inaturalist/android/DataQualityItem;

    const-string v2, "id_supported"

    const v4, 0x7f0801af

    const v5, 0x7f10017f

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/inaturalist/android/DataQualityItem;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v1, Lorg/inaturalist/android/DataQualityItem;

    const-string v2, "date"

    const/4 v4, 0x1

    const v5, 0x7f08008e

    const v6, 0x7f100118

    invoke-direct {v1, v5, v6, v2, v4}, Lorg/inaturalist/android/DataQualityItem;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    new-instance v1, Lorg/inaturalist/android/DataQualityItem;

    const-string v2, "location"

    const v5, 0x7f08008c

    const v6, 0x7f100203

    invoke-direct {v1, v5, v6, v2, v4}, Lorg/inaturalist/android/DataQualityItem;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v1, Lorg/inaturalist/android/DataQualityItem;

    const-string v2, "wild"

    const v5, 0x7f08006b

    const v6, 0x7f1002a8

    invoke-direct {v1, v5, v6, v2, v4}, Lorg/inaturalist/android/DataQualityItem;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v1, Lorg/inaturalist/android/DataQualityItem;

    const-string v2, "evidence"

    const v5, 0x7f0802f1

    const v6, 0x7f100153

    invoke-direct {v1, v5, v6, v2, v4}, Lorg/inaturalist/android/DataQualityItem;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v1, Lorg/inaturalist/android/DataQualityItem;

    const-string v2, "recent"

    const v5, 0x7f0800df

    const v6, 0x7f1002ed

    invoke-direct {v1, v5, v6, v2, v4}, Lorg/inaturalist/android/DataQualityItem;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    new-instance v1, Lorg/inaturalist/android/DataQualityItem;

    const-string v2, "community_id"

    const v5, 0x7f0802e4

    const v6, 0x7f1000f0

    invoke-direct {v1, v5, v6, v2, v3}, Lorg/inaturalist/android/DataQualityItem;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 322
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment;->mMetricsVotes:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v1, v2, :cond_4

    .line 323
    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment;->mMetricsVotes:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "metric"

    .line 326
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "location"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    const-string v6, "evidence"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :sswitch_2
    const-string v5, "wild"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    const-string v5, "date"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_4
    const-string v5, "recent"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    const/4 v9, -0x1

    goto :goto_3

    :pswitch_0
    const/16 v9, 0x8

    goto :goto_3

    :pswitch_1
    const/4 v9, 0x7

    goto :goto_3

    :pswitch_2
    const/4 v9, 0x6

    goto :goto_3

    :pswitch_3
    const/4 v9, 0x5

    :goto_3
    :pswitch_4
    if-le v9, v10, :cond_3

    const-string v5, "agree"

    .line 346
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 347
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/inaturalist/android/DataQualityItem;

    iget v6, v5, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    add-int/2addr v6, v4

    iput v6, v5, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    goto :goto_4

    .line 349
    :cond_1
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/inaturalist/android/DataQualityItem;

    iget v6, v5, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    add-int/2addr v6, v4

    iput v6, v5, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    :goto_4
    const-string v5, "user"

    .line 352
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "user"

    .line 353
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "login"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/inaturalist/android/DataQualityAssessment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v6}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "agree"

    .line 354
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/DataQualityItem;

    iput-boolean v4, v2, Lorg/inaturalist/android/DataQualityItem;->currentUserAgrees:Z

    goto :goto_5

    .line 357
    :cond_2
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/DataQualityItem;

    iput-boolean v4, v2, Lorg/inaturalist/android/DataQualityItem;->currentUserDisagrees:Z

    :cond_3
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 365
    :cond_4
    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "observed_on"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 366
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/DataQualityItem;

    iput v4, v1, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    goto :goto_6

    .line 368
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/DataQualityItem;

    iput v4, v1, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    .line 371
    :goto_6
    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 372
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/DataQualityItem;

    iput v4, v1, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    goto :goto_7

    .line 374
    :cond_6
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/DataQualityItem;

    iput v4, v1, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    .line 377
    :goto_7
    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "photos"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "photos"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 378
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/DataQualityItem;

    iput v4, v1, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    goto :goto_8

    .line 380
    :cond_7
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/DataQualityItem;

    iput v4, v1, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    .line 383
    :goto_8
    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "identifications"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "identifications"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v1, v6, :cond_8

    .line 384
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/DataQualityItem;

    iput v4, v1, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    goto :goto_9

    .line 386
    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/DataQualityItem;

    iput v4, v1, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    .line 389
    :goto_9
    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "community_taxon"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v2, 0x9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "community_taxon"

    invoke-virtual {v1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "rank_level"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0xa

    if-gt v1, v3, :cond_9

    .line 390
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/DataQualityItem;

    iput v4, v1, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    goto :goto_a

    .line 392
    :cond_9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/DataQualityItem;

    iput v4, v1, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    .line 395
    :goto_a
    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mDataQualityList:Landroid/widget/ListView;

    new-instance v2, Lorg/inaturalist/android/DataQualityAdapter;

    invoke-direct {v2, p0, p0, v0}, Lorg/inaturalist/android/DataQualityAdapter;-><init>(Landroid/content/Context;Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 397
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mDataQualityList:Landroid/widget/ListView;

    invoke-static {v0}, Lorg/inaturalist/android/ActivityHelper;->resizeList(Landroid/widget/ListView;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x37b9b9a5 -> :sswitch_4
        0x2eefae -> :sswitch_3
        0x37afca -> :sswitch_2
        0x16d39e57 -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lorg/inaturalist/android/DataQualityAssessment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    const-string p1, "observation"

    .line 77
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    .line 80
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/DataQualityAssessment;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f08014e

    .line 81
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 83
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f100115

    .line 84
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 86
    invoke-virtual {p0}, Lorg/inaturalist/android/DataQualityAssessment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const p1, 0x7f0d003b

    .line 87
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment;->setContentView(I)V

    .line 88
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const p1, 0x7f0a00e5

    .line 90
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mDataQualityList:Landroid/widget/ListView;

    const p1, 0x7f0a016b

    .line 91
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a016f

    .line 92
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a016d

    .line 93
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedText:Landroid/widget/TextView;

    const p1, 0x7f0a0171

    .line 94
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedText:Landroid/widget/TextView;

    const p1, 0x7f0a016c

    .line 95
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a0170

    .line 96
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a01b7

    .line 97
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/DataQualityAssessment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mLoadingIdCanBeImproved:Landroid/view/ViewGroup;

    .line 100
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_DATA_QUALITY_METRICS:Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, v1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "observation_id"

    .line 101
    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 104
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedContainer:Landroid/view/ViewGroup;

    new-instance v0, Lorg/inaturalist/android/DataQualityAssessment$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/DataQualityAssessment$1;-><init>(Lorg/inaturalist/android/DataQualityAssessment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCannotBeImprovedContainer:Landroid/view/ViewGroup;

    new-instance v0, Lorg/inaturalist/android/DataQualityAssessment$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/DataQualityAssessment$2;-><init>(Lorg/inaturalist/android/DataQualityAssessment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDataQualityAgree(Ljava/lang/String;)V
    .locals 4

    .line 198
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_AGREE_DATA_QUALITY:Ljava/lang/String;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "observation_id"

    .line 199
    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "metric"

    .line 200
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onDataQualityDisagree(Ljava/lang/String;)V
    .locals 4

    .line 206
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_DISAGREE_DATA_QUALITY:Ljava/lang/String;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "observation_id"

    .line 207
    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "metric"

    .line 208
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onDataQualityVoteDelete(Ljava/lang/String;)V
    .locals 4

    .line 214
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_DATA_QUALITY_VOTE:Ljava/lang/String;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "observation_id"

    .line 215
    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "metric"

    .line 216
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/DataQualityAssessment;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 184
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mDataQualityMetricsReceiver:Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mChangeDataQualityMetricsReceiver:Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 157
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 158
    invoke-direct {p0}, Lorg/inaturalist/android/DataQualityAssessment;->refreshMetrics()V

    .line 159
    invoke-direct {p0}, Lorg/inaturalist/android/DataQualityAssessment;->refreshIdCanBeImproved()V

    .line 161
    new-instance v0, Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;-><init>(Lorg/inaturalist/android/DataQualityAssessment;Lorg/inaturalist/android/DataQualityAssessment$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mDataQualityMetricsReceiver:Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "data_quality_metrics_result"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment;->mDataQualityMetricsReceiver:Lorg/inaturalist/android/DataQualityAssessment$DataQualityMetricsReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 165
    new-instance v0, Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;-><init>(Lorg/inaturalist/android/DataQualityAssessment;Lorg/inaturalist/android/DataQualityAssessment$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mChangeDataQualityMetricsReceiver:Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "agree_data_quality_result"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "disagree_data_quality_result"

    .line 167
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "delete_data_quality_vote_result"

    .line 168
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lorg/inaturalist/android/DataQualityAssessment;->mChangeDataQualityMetricsReceiver:Lorg/inaturalist/android/DataQualityAssessment$ChangeDataQualityMetricsReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 171
    new-instance v0, Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;-><init>(Lorg/inaturalist/android/DataQualityAssessment;Lorg/inaturalist/android/DataQualityAssessment$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedReceiver:Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "id_can_be_improved_result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "id_cannot_be_improved_result"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "delete_id_can_be_improved_vote_result"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lorg/inaturalist/android/DataQualityAssessment;->mIdCanBeImprovedReceiver:Lorg/inaturalist/android/DataQualityAssessment$IdCanBeImprovedReceiver;

    invoke-static {v1, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 58
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 64
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 65
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
