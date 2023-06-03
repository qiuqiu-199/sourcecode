.class public Lorg/inaturalist/android/MissionDetailsMapActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MissionDetailsMapActivity.java"


# static fields
.field public static final OBSERVATIONS:Ljava/lang/String; = "observations"

.field private static final TAG:Ljava/lang/String; = "MissionDetailsMapActivity"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMarkerObservations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public mObservations:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/MissionDetailsMapActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$002(Lorg/inaturalist/android/MissionDetailsMapActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$100(Lorg/inaturalist/android/MissionDetailsMapActivity;)Ljava/util/HashMap;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMarkerObservations:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/MissionDetailsMapActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->loadObservationsToMap()V

    return-void
.end method

.method private loadListFromValue(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
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

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 258
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 259
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 260
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1

    :cond_1
    return-object v1
.end method

.method private loadObservationsToMap()V
    .locals 12

    .line 107
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 110
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    :goto_0
    iget-object v3, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mObservations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 113
    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v4, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mObservations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v4, "place_guess"

    .line 114
    invoke-virtual {v3, v4}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "latitude"

    .line 115
    invoke-virtual {v3, v4}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "longitude"

    .line 116
    invoke-virtual {v3, v5}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    const v6, 0x7f080302

    if-nez v2, :cond_1

    if-eqz v4, :cond_2

    .line 120
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v7, v8, v9, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 123
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 124
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 125
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v5, v5

    const-wide v8, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v8

    double-to-int v5, v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    double-to-int v6, v10

    invoke-static {v4, v5, v6, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 127
    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v5, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    .line 128
    iget-object v5, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    .line 129
    iget-object v5, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMarkerObservations:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v0, v7}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 134
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v7, v8, v9, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 135
    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v4, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-static {v6}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    .line 136
    iget-object v5, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    .line 137
    iget-object v5, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMarkerObservations:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v0, v7}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 142
    :cond_3
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lorg/inaturalist/android/MissionDetailsMapActivity$1;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/MissionDetailsMapActivity$1;-><init>(Lorg/inaturalist/android/MissionDetailsMapActivity;Lcom/google/android/gms/maps/model/LatLngBounds$Builder;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 155
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lorg/inaturalist/android/MissionDetailsMapActivity$2;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/MissionDetailsMapActivity$2;-><init>(Lorg/inaturalist/android/MissionDetailsMapActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    return-void
.end method

.method private setUpMapIfNeeded()V
    .locals 2

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMarkerObservations:Ljava/util/HashMap;

    .line 229
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a01ef

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    new-instance v1, Lorg/inaturalist/android/MissionDetailsMapActivity$3;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/MissionDetailsMapActivity$3;-><init>(Lorg/inaturalist/android/MissionDetailsMapActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x106000d

    .line 75
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 77
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f08014f

    .line 78
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const v1, 0x7f100212

    .line 79
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    if-nez p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "observations"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/inaturalist/android/MissionDetailsMapActivity;->loadListFromValue(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mObservations:Ljava/util/ArrayList;

    .line 84
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mObservations:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->finish()V

    :cond_0
    const p1, 0x7f0d007f

    .line 90
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetailsMapActivity;->setContentView(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 200
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000a

    .line 201
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 203
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 208
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

    .line 222
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 219
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v2

    .line 216
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v2

    .line 213
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v2

    .line 210
    :cond_3
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->finish()V

    return v2
.end method

.method public onPause()V
    .locals 0

    .line 175
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 186
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a02f5

    .line 188
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const v0, 0x7f0a035e

    .line 190
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v0, 0x7f0a0398

    .line 192
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 195
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 95
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 99
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->setUpMapIfNeeded()V

    .line 101
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetailsMapActivity;->mObservations:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 102
    invoke-direct {p0}, Lorg/inaturalist/android/MissionDetailsMapActivity;->loadObservationsToMap()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 180
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 56
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 64
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
