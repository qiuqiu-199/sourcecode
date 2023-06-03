.class public Lorg/inaturalist/android/ObservationPhotosViewer;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ObservationPhotosViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;
    }
.end annotation


# static fields
.field public static final CURRENT_PHOTO_INDEX:Ljava/lang/String; = "current_photo_index"

.field public static final DELETE_PHOTO_INDEX:Ljava/lang/String; = "delete_photo_index"

.field public static final IS_NEW_OBSERVATION:Ljava/lang/String; = "is_new_observation"

.field public static final IS_TAXON:Ljava/lang/String; = "is_taxon"

.field public static final OBSERVATION:Ljava/lang/String; = "observation"

.field public static final OBSERVATION_ID:Ljava/lang/String; = "observation_id"

.field public static final OBSERVATION_ID_INTERNAL:Ljava/lang/String; = "observation_id_internal"

.field public static final READ_ONLY:Ljava/lang/String; = "read_only"

.field public static final SET_DEFAULT_PHOTO_INDEX:Ljava/lang/String; = "set_default_photo_index"

.field private static TAG:Ljava/lang/String; = "ObservationPhotosViewer"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mCurrentPhotoIndex:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mDeletePhoto:Landroid/view/View;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIsNewObservation:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mIsTaxon:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservation:Lorg/json/JSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONObjectBundler;
    .end annotation
.end field

.field public mObservationId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservationIdInternal:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mReadOnly:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mViewPager:Luk/co/senab/photoview/HackyViewPager;


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

.method static synthetic access$000(Lorg/inaturalist/android/ObservationPhotosViewer;)Luk/co/senab/photoview/HackyViewPager;
    .locals 0

    .line 61
    iget-object p0, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 105
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhotosViewer;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f08014e

    .line 111
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 113
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhotosViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v1, 0x7f0d00a8

    .line 114
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationPhotosViewer;->setContentView(I)V

    const v1, 0x7f0a00f4

    .line 116
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationPhotosViewer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mDeletePhoto:Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhotosViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    :try_start_0
    const-string p1, "is_new_observation"

    .line 122
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsNewObservation:Z

    const-string p1, "current_photo_index"

    .line 123
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mCurrentPhotoIndex:I

    .line 125
    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsNewObservation:Z

    if-nez p1, :cond_0

    const-string p1, "observation"

    .line 126
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 127
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservation:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "observation_id"

    .line 129
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservationId:I

    const-string p1, "observation_id_internal"

    .line 130
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservationIdInternal:I

    :cond_1
    :goto_0
    const-string p1, "read_only"

    .line 133
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mReadOnly:Z

    const-string p1, "is_taxon"

    .line 134
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsTaxon:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 141
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsTaxon:Z

    if-eqz p1, :cond_4

    .line 142
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservation:Lorg/json/JSONObject;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonScientificName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 146
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservation:Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const p1, 0x7f100291

    .line 150
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    :goto_2
    const p1, 0x7f0a017b

    .line 153
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationPhotosViewer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Luk/co/senab/photoview/HackyViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    .line 154
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservation:Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsNewObservation:Z

    if-nez p1, :cond_5

    .line 155
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    new-instance v0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservation:Lorg/json/JSONObject;

    iget-boolean v3, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsTaxon:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lorg/json/JSONObject;Z)V

    invoke-virtual {p1, v0}, Luk/co/senab/photoview/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_3

    .line 156
    :cond_5
    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsNewObservation:Z

    if-eqz p1, :cond_7

    .line 157
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    new-instance v0, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    iget v3, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservationId:I

    iget v4, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mObservationIdInternal:I

    invoke-direct {v0, p0, v1, v3, v4}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;II)V

    invoke-virtual {p1, v0}, Luk/co/senab/photoview/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 158
    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mReadOnly:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mDeletePhoto:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_6
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mDeletePhoto:Landroid/view/View;

    new-instance v0, Lorg/inaturalist/android/ObservationPhotosViewer$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationPhotosViewer$1;-><init>(Lorg/inaturalist/android/ObservationPhotosViewer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    iget v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mCurrentPhotoIndex:I

    invoke-virtual {p1, v0}, Luk/co/senab/photoview/HackyViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 195
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mIsNewObservation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mReadOnly:Z

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhotosViewer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0010

    .line 197
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1

    .line 200
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0325

    if-eq v0, v1, :cond_0

    .line 188
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 182
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "set_default_photo_index"

    .line 183
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v1}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 184
    invoke-virtual {p0, v0, p1}, Lorg/inaturalist/android/ObservationPhotosViewer;->setResult(ILandroid/content/Intent;)V

    .line 185
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhotosViewer;->finish()V

    return v2

    :cond_1
    const/4 p1, 0x0

    .line 178
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationPhotosViewer;->setResult(I)V

    .line 179
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhotosViewer;->finish()V

    return v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v0}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lorg/inaturalist/android/ObservationPhotosViewer;->mCurrentPhotoIndex:I

    .line 208
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 91
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 98
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 99
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
