.class public Lorg/inaturalist/android/TaxonMapActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TaxonMapActivity.java"


# static fields
.field public static MAP_LATITUDE:Ljava/lang/String; = "map_latitude"

.field public static MAP_LONGITUDE:Ljava/lang/String; = "map_longitude"

.field public static MAP_ZOOM:Ljava/lang/String; = "map_zoom"

.field public static OBSERVATION:Ljava/lang/String; = "observation"

.field private static TAG:Ljava/lang/String; = "TaxonMapActivity"

.field public static TAXON_ID:Ljava/lang/String; = "taxon_id"

.field public static TAXON_NAME:Ljava/lang/String; = "taxon_name"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field public mMapLatitude:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mMapLongitude:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mMapZoom:F
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservation:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field public mTaxonId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTaxonName:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/TaxonMapActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$002(Lorg/inaturalist/android/TaxonMapActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$100(Lorg/inaturalist/android/TaxonMapActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/TaxonMapActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x5

    .line 99
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonMapActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x2

    .line 100
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonMapActivity;->requestWindowFeature(I)Z

    .line 102
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonMapActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 108
    new-instance v1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 110
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez p1, :cond_0

    .line 113
    sget-object p1, Lorg/inaturalist/android/TaxonMapActivity;->TAXON_ID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mTaxonId:I

    .line 114
    sget-object p1, Lorg/inaturalist/android/TaxonMapActivity;->TAXON_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mTaxonName:Ljava/lang/String;

    .line 115
    sget-object p1, Lorg/inaturalist/android/TaxonMapActivity;->MAP_LONGITUDE:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMapLongitude:D

    .line 116
    sget-object p1, Lorg/inaturalist/android/TaxonMapActivity;->MAP_LATITUDE:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMapLatitude:D

    .line 117
    sget-object p1, Lorg/inaturalist/android/TaxonMapActivity;->MAP_ZOOM:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMapZoom:F

    .line 118
    sget-object p1, Lorg/inaturalist/android/TaxonMapActivity;->OBSERVATION:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    :cond_0
    const p1, 0x7f0d00e2

    .line 121
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonMapActivity;->setContentView(I)V

    .line 123
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v1, 0x7f0a0270

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    new-instance v1, Lorg/inaturalist/android/TaxonMapActivity$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/TaxonMapActivity$1;-><init>(Lorg/inaturalist/android/TaxonMapActivity;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    const/4 p1, 0x1

    .line 162
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    const v1, 0x7f08014e

    .line 163
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 164
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 166
    iget-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mTaxonName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 207
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonMapActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000a

    .line 208
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 209
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a02f5

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a035e

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0398

    if-eq v0, v1, :cond_0

    .line 187
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 184
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v2

    .line 181
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v2

    .line 178
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v2

    .line 175
    :cond_3
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonMapActivity;->finish()V

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 193
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a02f5

    .line 195
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const v0, 0x7f0a035e

    .line 197
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v0, 0x7f0a0398

    .line 199
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 202
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 6

    .line 230
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 232
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMapLatitude:D

    iget-wide v4, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMapLongitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget v2, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMapZoom:F

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 216
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 218
    iget-object v1, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMapLatitude:D

    .line 219
    iget-object v1, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v1, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMapLongitude:D

    .line 220
    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iput v0, p0, Lorg/inaturalist/android/TaxonMapActivity;->mMapZoom:F

    .line 223
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 85
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 92
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 93
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
