.class public Lorg/inaturalist/android/IdentificationActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "IdentificationActivity.java"


# static fields
.field public static final FROM_SUGGESTION:Ljava/lang/String; = "from_suggestion"

.field public static final ICONIC_TAXON_NAME:Ljava/lang/String; = "iconic_taxon_name"

.field public static final ID_REMARKS:Ljava/lang/String; = "id_remarks"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final OBSERVATION:Ljava/lang/String; = "observation"

.field public static final OBSERVATION_ID:Ljava/lang/String; = "observation_id"

.field public static final OBSERVATION_ID_INTERNAL:Ljava/lang/String; = "observation_id_internal"

.field public static final OBSERVED_ON:Ljava/lang/String; = "observed_on"

.field public static final OBS_PHOTO_FILENAME:Ljava/lang/String; = "obs_photo_filename"

.field public static final OBS_PHOTO_URL:Ljava/lang/String; = "obs_photo_url"

.field public static final SPECIES_GUESS:Ljava/lang/String; = "species_guess"

.field public static final SUGGEST_ID:Ljava/lang/String; = "suggest_id"

.field public static final TAXON_ID:Ljava/lang/String; = "taxon_id"

.field public static final TAXON_NAME:Ljava/lang/String; = "taxon_name"

.field protected static final TAXON_SEARCH_REQUEST_CODE:I = 0x12d


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mFromSuggestion:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mIconicTaxonName:Ljava/lang/String;

.field private mIdName:Landroid/widget/TextView;

.field private mIdPic:Landroid/widget/ImageView;

.field public mLatitude:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mLongitude:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObsId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObsIdInternal:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

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

.field private mRemarks:Landroid/widget/EditText;

.field public mSuggestId:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mTaxonId:I

.field private mTaxonName:Landroid/widget/TextView;

.field private mTopActionBar:Landroid/support/v7/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mTaxonId:I

    .line 63
    iput-boolean v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mFromSuggestion:Z

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/IdentificationActivity;)I
    .locals 0

    .line 26
    iget p0, p0, Lorg/inaturalist/android/IdentificationActivity;->mTaxonId:I

    return p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/IdentificationActivity;)Landroid/widget/EditText;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/inaturalist/android/IdentificationActivity;->mRemarks:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/IdentificationActivity;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/inaturalist/android/IdentificationActivity;->mIdName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/IdentificationActivity;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/inaturalist/android/IdentificationActivity;->mIconicTaxonName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/IdentificationActivity;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/inaturalist/android/IdentificationActivity;->mTaxonName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/IdentificationActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/inaturalist/android/IdentificationActivity;->suggestId()V

    return-void
.end method

.method private suggestId()V
    .locals 5

    .line 169
    iget-object v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getSuggestSpecies()Z

    move-result v0

    const/16 v1, 0x12d

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsPhotoFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsPhotoUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "obs_photo_filename"

    .line 178
    iget-object v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsPhotoFilename:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "obs_photo_url"

    .line 179
    iget-object v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsPhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "longitude"

    .line 180
    iget-wide v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mLongitude:D

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "latitude"

    .line 181
    iget-wide v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mLatitude:D

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "observed_on"

    .line 182
    iget-object v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mObservedOn:Ljava/sql/Timestamp;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "observation_id"

    .line 183
    iget v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget v2, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsIdInternal:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v2, "observation"

    .line 185
    iget-object v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mObservationJson:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v2, "observation_id_internal"

    .line 187
    iget v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsIdInternal:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/IdentificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 170
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "suggest_id"

    const/4 v3, 0x1

    .line 171
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "observation_id"

    .line 172
    iget v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "observation_id_internal"

    .line 173
    iget v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsIdInternal:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "observation_json"

    .line 174
    iget-object v3, p0, Lorg/inaturalist/android/IdentificationActivity;->mObservationJson:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/IdentificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x12d

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    const-string p1, "taxon_id"

    .line 199
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTaxonId:I

    const-string p1, "iconic_taxon_name"

    .line 200
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mIconicTaxonName:Ljava/lang/String;

    .line 201
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTaxonName:Landroid/widget/TextView;

    const-string p2, "taxon_name"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "from_suggestion"

    .line 202
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mFromSuggestion:Z

    const-string p1, "rank_level"

    const/16 p2, 0x64

    .line 204
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x14

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    .line 205
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTaxonName:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTaxonName:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 210
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mIdName:Landroid/widget/TextView;

    const-string p2, "id_name"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mIdPic:Landroid/widget/ImageView;

    const-string p2, "id_url"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_1
    iget p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTaxonId:I

    if-nez p1, :cond_2

    .line 215
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/IdentificationActivity;->setResult(I)V

    .line 216
    invoke-virtual {p0}, Lorg/inaturalist/android/IdentificationActivity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    const v0, 0x7f0d008d

    .line 100
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/IdentificationActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/inaturalist/android/IdentificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "suggest_id"

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mSuggestId:Z

    const-string v0, "obs_photo_filename"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsPhotoFilename:Ljava/lang/String;

    const-string v0, "obs_photo_url"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsPhotoUrl:Ljava/lang/String;

    const-string v0, "longitude"

    const-wide/16 v2, 0x0

    .line 107
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/inaturalist/android/IdentificationActivity;->mLongitude:D

    const-string v0, "latitude"

    .line 108
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/inaturalist/android/IdentificationActivity;->mLatitude:D

    const-string v0, "observed_on"

    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mObservedOn:Ljava/sql/Timestamp;

    const-string v0, "observation_id"

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsId:I

    const-string v0, "observation_id_internal"

    const/4 v1, -0x1

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/inaturalist/android/IdentificationActivity;->mObsIdInternal:I

    const-string v0, "observation"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mObservationJson:Ljava/lang/String;

    .line 115
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lorg/inaturalist/android/IdentificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_1
    const p1, 0x7f0a02e1

    .line 119
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/IdentificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mRemarks:Landroid/widget/EditText;

    .line 122
    invoke-virtual {p0}, Lorg/inaturalist/android/IdentificationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    .line 123
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 124
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 125
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    const v0, 0x7f0d001a

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 127
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p0}, Lorg/inaturalist/android/IdentificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 129
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    const v0, 0x7f080392

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const p1, 0x7f0a017e

    .line 131
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/IdentificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTaxonName:Landroid/widget/TextView;

    const p1, 0x7f0a0177

    .line 132
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/IdentificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mIdName:Landroid/widget/TextView;

    const p1, 0x7f0a0178

    .line 133
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/IdentificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mIdPic:Landroid/widget/ImageView;

    .line 135
    iget-object p1, p0, Lorg/inaturalist/android/IdentificationActivity;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a02f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 136
    new-instance v0, Lorg/inaturalist/android/IdentificationActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/IdentificationActivity$1;-><init>(Lorg/inaturalist/android/IdentificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0172

    .line 155
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/IdentificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 156
    new-instance v0, Lorg/inaturalist/android/IdentificationActivity$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/IdentificationActivity$2;-><init>(Lorg/inaturalist/android/IdentificationActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-direct {p0}, Lorg/inaturalist/android/IdentificationActivity;->suggestId()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 90
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/IdentificationActivity;->setResult(I)V

    .line 87
    invoke-virtual {p0}, Lorg/inaturalist/android/IdentificationActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

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

    .line 77
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 78
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
