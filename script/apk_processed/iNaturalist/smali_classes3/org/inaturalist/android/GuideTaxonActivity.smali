.class public Lorg/inaturalist/android/GuideTaxonActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GuideTaxonActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/GuideTaxonActivity$URLSpanNoUnderline;,
        Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;,
        Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "GuideTaxonActivity"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mDownloadTaxon:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mGuideId:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mGuideTaxon:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

.field private mGuideXml:Lorg/inaturalist/android/GuideXML;

.field public mGuideXmlFilename:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mShowAdd:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTaxon:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field public mTaxonId:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mTaxonReceiver:Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/GuideTaxonActivity;)Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxonReceiver:Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/GuideTaxonActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->loadTaxon()V

    return-void
.end method

.method static synthetic access$200(Lorg/inaturalist/android/GuideTaxonActivity;)Lorg/inaturalist/android/GuideXML;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lorg/inaturalist/android/GuideTaxonActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private loadTaxon()V
    .locals 13

    .line 265
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0a01c0

    .line 270
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0105

    .line 272
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a0238

    .line 273
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    .line 280
    :try_start_0
    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v5}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "unique_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v5, v4

    .line 284
    :goto_0
    :try_start_1
    iget-object v6, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v6}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "default_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    .line 285
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    :catch_1
    if-nez v5, :cond_1

    .line 291
    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v5}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "preferred_common_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_2

    .line 293
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 294
    :cond_2
    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v5}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "english_common_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    const/16 v6, 0x8

    if-eqz v5, :cond_5

    .line 298
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 302
    :cond_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonScientificName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 299
    :cond_5
    :goto_1
    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v5}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :goto_2
    iget-object v1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const v3, 0x7f0a0386

    .line 307
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string v5, "default_photo"

    .line 309
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v4

    goto :goto_3

    :cond_6
    const-string v5, "default_photo"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    :goto_3
    const v7, 0x7f0a0062

    .line 310
    invoke-virtual {p0, v7}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v5, :cond_7

    const-string v8, "medium_url"

    .line 313
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f1002b3

    .line 314
    invoke-virtual {p0, v9}, Lorg/inaturalist/android/GuideTaxonActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v2

    const/4 v11, 0x1

    const-string v12, "attribution"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 316
    invoke-direct {p0, v7}, Lorg/inaturalist/android/GuideTaxonActivity;->stripUnderlines(Landroid/widget/TextView;)V

    goto :goto_4

    .line 318
    :cond_7
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v8, v4

    :goto_4
    if-eqz v8, :cond_8

    .line 321
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_a

    :cond_8
    const-string v5, "photo_url"

    .line 322
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_5
    move-object v8, v4

    goto :goto_6

    :cond_9
    const-string v4, "photo_url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_a
    :goto_6
    if-eqz v8, :cond_b

    .line 325
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    new-instance v0, Lorg/inaturalist/android/GuideTaxonActivity$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/GuideTaxonActivity$2;-><init>(Lorg/inaturalist/android/GuideTaxonActivity;)V

    invoke-static {v3, v8, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    goto :goto_7

    .line 339
    :cond_b
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 340
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    invoke-static {v1}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7
    const v0, 0x7f0a00f7

    .line 344
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "wikipedia_summary"

    .line 345
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v1, ""

    goto :goto_8

    :cond_c
    const-string v2, "wikipedia_summary"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    :goto_8
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a03df

    .line 348
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 349
    new-instance v1, Lorg/inaturalist/android/GuideTaxonActivity$3;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/GuideTaxonActivity$3;-><init>(Lorg/inaturalist/android/GuideTaxonActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private stripUnderlines(Landroid/widget/TextView;)V
    .locals 9

    .line 532
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 533
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 534
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 535
    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 536
    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 537
    invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 538
    new-instance v8, Lorg/inaturalist/android/GuideTaxonActivity$URLSpanNoUnderline;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, p0, v5}, Lorg/inaturalist/android/GuideTaxonActivity$URLSpanNoUnderline;-><init>(Lorg/inaturalist/android/GuideTaxonActivity;Ljava/lang/String;)V

    .line 539
    invoke-interface {v0, v8, v6, v7, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v0, 0x5

    .line 113
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x2

    .line 114
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideTaxonActivity;->requestWindowFeature(I)Z

    .line 116
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 122
    new-instance v1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 124
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const-string p1, "taxon"

    .line 127
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string p1, "guide_taxon"

    .line 128
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxon:Z

    const-string p1, "taxon_id"

    .line 129
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxonId:Ljava/lang/String;

    const-string p1, "guide_id"

    .line 130
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideId:Ljava/lang/String;

    const-string p1, "guide_xml_filename"

    .line 131
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideXmlFilename:Ljava/lang/String;

    const-string p1, "show_add"

    .line 132
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mShowAdd:Z

    const-string p1, "download_taxon"

    .line 133
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mDownloadTaxon:Z

    .line 136
    :cond_0
    iget-boolean p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxon:Z

    const/16 v1, 0x8

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideXmlFilename:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 138
    new-instance p1, Lorg/inaturalist/android/GuideXML;

    iget-object v4, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideId:Ljava/lang/String;

    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideXmlFilename:Ljava/lang/String;

    invoke-direct {p1, p0, v4, v5}, Lorg/inaturalist/android/GuideXML;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    .line 139
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    iget-object v4, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxonId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/inaturalist/android/GuideXML;->getTaxonById(Ljava/lang/String;)Lorg/inaturalist/android/GuideTaxonXML;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

    const p1, 0x7f0d0066

    .line 141
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideTaxonActivity;->setContentView(I)V

    const p1, 0x7f0a0105

    .line 143
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v4, 0x7f0a0238

    .line 144
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 146
    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

    invoke-virtual {v5}, Lorg/inaturalist/android/GuideTaxonXML;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonXML;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonXML;->getSections()Ljava/util/List;

    move-result-object p1

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0a031a

    .line 155
    invoke-virtual {p0, v6}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/inaturalist/android/GuideTaxonSectionXML;

    .line 157
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0d0068

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const v10, 0x7f0a03ab

    .line 158
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0a0072

    .line 159
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 161
    invoke-virtual {v8}, Lorg/inaturalist/android/GuideTaxonSectionXML;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v8}, Lorg/inaturalist/android/GuideTaxonSectionXML;->getBody()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 165
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_1

    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/inaturalist/android/GuideTaxonSectionXML;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v8}, Lorg/inaturalist/android/GuideTaxonSectionXML;->getAttribution()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const v6, 0x7f0a0063

    .line 173
    invoke-virtual {p0, v6}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 174
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 175
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :cond_3
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10036f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v5, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 181
    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

    invoke-virtual {v5}, Lorg/inaturalist/android/GuideTaxonXML;->getPhotos()Ljava/util/List;

    move-result-object v5

    .line 182
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/inaturalist/android/GuideTaxonPhotoXML;

    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_4
    invoke-virtual {v7}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->getAttribution()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const v6, 0x7f0a0062

    .line 187
    invoke-virtual {p0, v6}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 190
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1002b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 194
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    const p1, 0x7f0a0343

    .line 196
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const p1, 0x7f0a0145

    .line 201
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Gallery;

    .line 202
    new-instance v2, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;

    invoke-direct {v2, p0, p0, v5}, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;-><init>(Lorg/inaturalist/android/GuideTaxonActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 204
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 205
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual {p1, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 210
    :cond_7
    new-instance v1, Lorg/inaturalist/android/GuideTaxonActivity$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/GuideTaxonActivity$1;-><init>(Lorg/inaturalist/android/GuideTaxonActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_2

    :cond_8
    const p1, 0x7f0d00e0

    .line 236
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideTaxonActivity;->setContentView(I)V

    .line 238
    iget-boolean p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mDownloadTaxon:Z

    if-eqz p1, :cond_9

    const p1, 0x7f0a01d0

    .line 239
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0382

    .line 240
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideTaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_9
    :goto_2
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    const p1, 0x7f08014e

    .line 245
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 246
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 249
    iget-boolean p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxon:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideXmlFilename:Ljava/lang/String;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

    if-eqz p1, :cond_b

    .line 250
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonXML;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    :cond_a
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideTaxonXML;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 254
    :cond_b
    iget-boolean p1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mDownloadTaxon:Z

    if-nez p1, :cond_c

    .line 255
    invoke-direct {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->loadTaxon()V

    :cond_c
    const p1, 0x7f100025

    .line 257
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideTaxonActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 260
    :cond_d
    :goto_3
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 381
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 382
    iget-boolean v1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mShowAdd:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0e0007

    .line 383
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 385
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 390
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a0043

    if-eq v0, v1, :cond_0

    .line 406
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 396
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.INSERT"

    sget-object v1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    const-class v3, Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p1, v0, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    iget-boolean v0, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxon:Z

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    const-string v0, "species_guess"

    const-string v4, "%s (%s)"

    .line 398
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

    invoke-virtual {v5}, Lorg/inaturalist/android/GuideTaxonXML;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    iget-object v1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mGuideTaxonXml:Lorg/inaturalist/android/GuideTaxonXML;

    invoke-virtual {v1}, Lorg/inaturalist/android/GuideTaxonXML;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string v0, "species_guess"

    const-string v4, "%s (%s)"

    .line 400
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v6, "display_name"

    invoke-virtual {v5, v6}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v6, "display_name"

    invoke-virtual {v5, v6}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v6, "common_name"

    invoke-virtual {v5, v6}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v3, v1

    iget-object v1, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v5, "name"

    invoke-virtual {v1, v5}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    :goto_1
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideTaxonActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 392
    :cond_3
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideTaxonActivity;->finish()V

    return v2
.end method

.method protected onPause()V
    .locals 1

    .line 547
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 549
    iget-object v0, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxonReceiver:Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 554
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 556
    iget-boolean v0, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mDownloadTaxon:Z

    if-eqz v0, :cond_1

    .line 558
    new-instance v0, Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;-><init>(Lorg/inaturalist/android/GuideTaxonActivity;Lorg/inaturalist/android/GuideTaxonActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxonReceiver:Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;

    .line 559
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "action_get_taxon_result"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 560
    sget-object v2, Lorg/inaturalist/android/GuideTaxonActivity;->TAG:Ljava/lang/String;

    const-string v3, "Registering ACTION_GET_TAXON_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v2, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxonReceiver:Lorg/inaturalist/android/GuideTaxonActivity$TaxonReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 563
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "taxon_id"

    .line 564
    iget-object v2, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxonId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxonId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/GuideTaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 565
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 413
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 414
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 80
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 88
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
