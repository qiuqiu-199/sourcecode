.class public Lorg/inaturalist/android/LocationChooserActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LocationChooserActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field protected static final ACCURACY:Ljava/lang/String; = "accuracy"

.field protected static final ICONIC_TAXON_NAME:Ljava/lang/String; = "iconic_taxon_name"

.field protected static final LATITUDE:Ljava/lang/String; = "latitude"

.field protected static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final TAG:Ljava/lang/String; = "LocationChooserActivity"


# instance fields
.field public mAccuracy:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIconicTaxonName:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mLatitude:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field public mLongitude:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMarkerObservations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/inaturalist/android/Observation;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomToLocation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mZoomToLocation:Z

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/LocationChooserActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$002(Lorg/inaturalist/android/LocationChooserActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 39
    iput-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$100(Lorg/inaturalist/android/LocationChooserActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/LocationChooserActivity;)Ljava/util/HashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMarkerObservations:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/LocationChooserActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/inaturalist/android/LocationChooserActivity;->zoomToLocation()V

    return-void
.end method

.method private onCancel()V
    .locals 7

    .line 186
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v1, 0x7f100147

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/LocationChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100136

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/LocationChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/inaturalist/android/LocationChooserActivity$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/LocationChooserActivity$1;-><init>(Lorg/inaturalist/android/LocationChooserActivity;)V

    new-instance v4, Lorg/inaturalist/android/LocationChooserActivity$2;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/LocationChooserActivity$2;-><init>(Lorg/inaturalist/android/LocationChooserActivity;)V

    const v5, 0x7f1003b1

    const v6, 0x7f100260

    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void
.end method

.method private setUpMapIfNeeded()V
    .locals 2

    .line 269
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMarkerObservations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMarkerObservations:Ljava/util/HashMap;

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a01ef

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    new-instance v1, Lorg/inaturalist/android/LocationChooserActivity$3;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/LocationChooserActivity$3;-><init>(Lorg/inaturalist/android/LocationChooserActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    :cond_1
    return-void
.end method

.method private zoomToLocation()V
    .locals 12

    .line 113
    iget-wide v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mLongitude:D

    .line 114
    iget-wide v2, p0, Lorg/inaturalist/android/LocationChooserActivity;->mLatitude:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_4

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_4

    .line 117
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/16 v0, 0xf

    .line 121
    iget-wide v1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mAccuracy:D

    const/4 v3, 0x1

    cmpl-double v7, v1, v4

    if-lez v7, :cond_1

    .line 122
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 123
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 125
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v4, 0x3fd999999999999aL    # 0.4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double v0, v0, v7

    double-to-int v0, v0

    int-to-double v0, v0

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    mul-double v0, v0, v4

    const-wide v4, 0x41031bf7e0000000L    # 156542.984375

    const/4 v2, 0x1

    :goto_0
    mul-double v7, v4, v0

    .line 131
    iget-wide v9, p0, Lorg/inaturalist/android/LocationChooserActivity;->mAccuracy:D

    cmpl-double v11, v7, v9

    if-lez v11, :cond_0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v7

    add-int/lit8 v2, v2, 0x1

    const-string v7, "LocationChooserActivity"

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t** Zoom = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; CurrentAcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-double v9, v4, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, "; Accuracy = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lorg/inaturalist/android/LocationChooserActivity;->mAccuracy:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "LocationChooserActivity"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Zoom = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; Accuracy = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lorg/inaturalist/android/LocationChooserActivity;->mAccuracy:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 141
    :cond_1
    iget-boolean v1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mZoomToLocation:Z

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    int-to-float v0, v0

    invoke-static {v6, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_2
    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mZoomToLocation:Z

    goto :goto_1

    .line 145
    :cond_3
    iget-object v1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    int-to-float v0, v0

    invoke-static {v6, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const-string v0, "location"

    .line 77
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LocationChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/inaturalist/android/LocationChooserActivity;->mLongitude:D

    .line 83
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/inaturalist/android/LocationChooserActivity;->mLatitude:D

    .line 84
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accuracy"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/inaturalist/android/LocationChooserActivity;->mAccuracy:D

    .line 85
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "iconic_taxon_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/LocationChooserActivity;->mIconicTaxonName:Ljava/lang/String;

    .line 88
    :cond_0
    iget-wide v2, p0, Lorg/inaturalist/android/LocationChooserActivity;->mLongitude:D

    const/4 v4, 0x1

    cmpl-double v5, v2, v0

    if-eqz v5, :cond_1

    iget-wide v2, p0, Lorg/inaturalist/android/LocationChooserActivity;->mLatitude:D

    cmpl-double v5, v2, v0

    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    .line 89
    iput-boolean v4, p0, Lorg/inaturalist/android/LocationChooserActivity;->mZoomToLocation:Z

    .line 92
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    const v0, 0x7f08014e

    .line 94
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 95
    invoke-virtual {p1, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f100132

    .line 96
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/LocationChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0d006f

    .line 98
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LocationChooserActivity;->setContentView(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 180
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    .line 181
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 182
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 204
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lorg/inaturalist/android/LocationChooserActivity;->onCancel()V

    const/4 p1, 0x0

    return p1

    .line 208
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, "Location Changed"

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 316
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 317
    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 264
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 261
    :sswitch_0
    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v1

    .line 258
    :sswitch_1
    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v1

    .line 220
    :sswitch_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 222
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    .line 224
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 225
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 227
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double v2, v2, v6

    double-to-int v2, v2

    const-wide v6, 0x41031bf7e0000000L    # 156542.984375

    const/4 v3, 0x1

    :goto_0
    int-to-float v8, v3

    cmpg-float v8, v8, v0

    if-gez v8, :cond_0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    int-to-double v8, v2

    .line 237
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v8, v8, v4

    mul-double v8, v8, v6

    const-string v0, "LocationChooserActivity"

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Meters per radius = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "; zoom = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "latitude"

    .line 242
    iget-object v2, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "longitude"

    .line 243
    iget-object v2, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "accuracy"

    .line 244
    invoke-virtual {p1, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 248
    invoke-virtual {p0, p1, v0}, Lorg/inaturalist/android/LocationChooserActivity;->setResult(ILandroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->finish()V

    return v1

    .line 255
    :sswitch_3
    iget-object p1, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v1

    .line 216
    :sswitch_4
    invoke-direct {p0}, Lorg/inaturalist/android/LocationChooserActivity;->onCancel()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f0a02f5 -> :sswitch_3
        0x7f0a02f9 -> :sswitch_2
        0x7f0a035e -> :sswitch_1
        0x7f0a0398 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .line 155
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 166
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a02f5

    .line 168
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const v0, 0x7f0a035e

    .line 170
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v0, 0x7f0a0398

    .line 172
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 175
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 104
    iget-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/LocationChooserActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 107
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/LocationChooserActivity;->setUpMapIfNeeded()V

    .line 108
    invoke-direct {p0}, Lorg/inaturalist/android/LocationChooserActivity;->zoomToLocation()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 60
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 67
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 68
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
