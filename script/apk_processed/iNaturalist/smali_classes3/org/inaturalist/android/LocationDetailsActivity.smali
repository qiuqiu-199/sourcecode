.class public Lorg/inaturalist/android/LocationDetailsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LocationDetailsActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static final OBSERVATION:Ljava/lang/String; = "observation"

.field public static final OBSERVATION_JSON:Ljava/lang/String; = "observation_json"

.field public static final READ_ONLY:Ljava/lang/String; = "read_only"

.field private static final TAG:Ljava/lang/String; = "LocationDetailsActivity"


# instance fields
.field public mAccuracy:D
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIsReadOnly:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mLatitude:Ljava/lang/Double;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLocationCoordinates:Landroid/widget/TextView;

.field private mLocationManager:Landroid/location/LocationManager;

.field public mLongitude:Ljava/lang/Double;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field public mObservation:Lorg/inaturalist/android/Observation;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mObservationJson:Lorg/inaturalist/android/BetterJSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/LocationDetailsActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$002(Lorg/inaturalist/android/LocationDetailsActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$100(Lorg/inaturalist/android/LocationDetailsActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/LocationDetailsActivity;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservationJson:Lorg/inaturalist/android/BetterJSONObject;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/LocationDetailsActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/LocationDetailsActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->zoomToLocation()V

    return-void
.end method

.method private setUpMapIfNeeded()V
    .locals 2

    .line 214
    iget-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a01ef

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    new-instance v1, Lorg/inaturalist/android/LocationDetailsActivity$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/LocationDetailsActivity$1;-><init>(Lorg/inaturalist/android/LocationDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    :cond_0
    return-void
.end method

.method private zoomToLocation()V
    .locals 15

    .line 111
    iget-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLongitude:Ljava/lang/Double;

    .line 112
    iget-object v1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLatitude:Ljava/lang/Double;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 115
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/16 v0, 0xf

    .line 119
    iget-wide v3, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mAccuracy:D

    const-wide/16 v5, 0x0

    const/4 v1, 0x2

    const/4 v7, 0x1

    cmpl-double v8, v3, v5

    if-lez v8, :cond_1

    .line 120
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 121
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 123
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v0

    const-wide v8, 0x3fd999999999999aL    # 0.4

    .line 126
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v8

    const-wide v8, 0x41031bf7e0000000L    # 156542.984375

    const/4 v0, 0x1

    :goto_0
    mul-double v10, v8, v3

    .line 129
    iget-wide v12, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mAccuracy:D

    cmpl-double v14, v10, v12

    if-lez v14, :cond_0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-int/lit8 v0, v0, 0x1

    const-string v10, "LocationDetailsActivity"

    .line 132
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\t** Zoom = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "; CurrentAcc = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-double v12, v8, v3

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, "; Accuracy = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mAccuracy:D

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "LocationDetailsActivity"

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Zoom = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; Accuracy = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mAccuracy:D

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr v0, v1

    .line 139
    :cond_1
    iget-object v3, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v7, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 141
    :cond_2
    iget-wide v2, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mAccuracy:D

    const/4 v0, 0x0

    cmpl-double v4, v2, v5

    if-nez v4, :cond_3

    .line 142
    iget-object v2, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLocationCoordinates:Landroid/widget/TextView;

    const v3, 0x7f100201

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/LocationDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "%.5f..."

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLatitude:Ljava/lang/Double;

    aput-object v6, v5, v0

    .line 143
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v4, "%.5f..."

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLongitude:Ljava/lang/Double;

    aput-object v6, v5, v0

    .line 144
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    .line 142
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 146
    :cond_3
    iget-object v2, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLocationCoordinates:Landroid/widget/TextView;

    const v3, 0x7f100200

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/LocationDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "%.5f..."

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLatitude:Ljava/lang/Double;

    aput-object v8, v6, v0

    .line 147
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "%.5f..."

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLongitude:Ljava/lang/Double;

    aput-object v8, v6, v0

    .line 148
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-wide v5, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mAccuracy:D

    const-wide v8, 0x408f380000000000L    # 999.0

    cmpl-double v10, v5, v8

    if-lez v10, :cond_4

    const-string v0, ">1 km"

    goto :goto_1

    :cond_4
    const-string v5, "%dm"

    new-array v6, v7, [Ljava/lang/Object;

    iget-wide v7, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mAccuracy:D

    double-to-int v7, v7

    .line 149
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v1

    .line 146
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 74
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const-string p1, "location"

    .line 75
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LocationDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 77
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "observation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/Observation;

    iput-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    .line 78
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "observation_json"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservationJson:Lorg/inaturalist/android/BetterJSONObject;

    .line 80
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "read_only"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mIsReadOnly:Z

    .line 81
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    :goto_1
    iput-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLongitude:Ljava/lang/Double;

    .line 82
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    :goto_2
    iput-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLatitude:Ljava/lang/Double;

    .line 83
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v0, p1

    goto :goto_3

    :cond_3
    const-wide/16 v0, 0x0

    :goto_3
    iput-wide v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mAccuracy:D

    .line 85
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x106000d

    .line 88
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 90
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08014f

    .line 91
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const v0, 0x7f1001ff

    .line 92
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    const p1, 0x7f0d0071

    .line 94
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LocationDetailsActivity;->setContentView(I)V

    const p1, 0x7f0a01d5

    .line 96
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/LocationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLocationCoordinates:Landroid/widget/TextView;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 184
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    .line 185
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    iget-boolean v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mIsReadOnly:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a02f9

    .line 187
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 188
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 190
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, "Location Changed"

    .line 244
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

    .line 245
    iget-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 247
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 248
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 195
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

    .line 209
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 206
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v2

    .line 203
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v2

    .line 200
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    return v2

    .line 197
    :cond_3
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->finish()V

    return v2
.end method

.method public onPause()V
    .locals 0

    .line 159
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 170
    iget-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a02f5

    .line 172
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const v0, 0x7f0a035e

    .line 174
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v0, 0x7f0a0398

    .line 176
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 179
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

    .line 101
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 102
    iget-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/LocationDetailsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 105
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->setUpMapIfNeeded()V

    .line 106
    invoke-direct {p0}, Lorg/inaturalist/android/LocationDetailsActivity;->zoomToLocation()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 164
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
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

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 66
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
