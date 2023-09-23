.class public Lcom/google/maps/android/data/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# static fields
.field private static final FEATURE_NOT_ON_MAP:Ljava/lang/Object; = null

.field private static final LRU_CACHE_SIZE:I = 0x32


# instance fields
.field private mContainerFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/data/geojson/BiMultiMap<",
            "Lcom/google/maps/android/data/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/kml/KmlContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDefaultLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

.field private final mDefaultPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

.field private final mDefaultPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

.field private final mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/maps/android/data/geojson/BiMultiMap<",
            "Lcom/google/maps/android/data/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mGroundOverlays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/data/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private final mImagesCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerOnMap:Z

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private final mMarkerIconUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolygonsClickable:Z

.field private mStyleMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mStylesRenderer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-direct {v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/google/maps/android/data/Renderer;->mPolygonsClickable:Z

    .line 136
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 137
    iput-object p2, p0, Lcom/google/maps/android/data/Renderer;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/google/maps/android/data/Renderer;->mLayerOnMap:Z

    .line 139
    new-instance p1, Landroid/support/v4/util/LruCache;

    const/16 p2, 0x32

    invoke-direct {p1, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    .line 141
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    .line 143
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mDefaultLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    .line 144
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    .line 145
    new-instance p1, Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-direct {p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;-><init>()V

    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mContainerFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/GoogleMap;",
            "Ljava/util/HashMap<",
            "+",
            "Lcom/google/maps/android/data/Feature;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-direct {v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;-><init>()V

    iput-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/google/maps/android/data/Renderer;->mPolygonsClickable:Z

    .line 155
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 156
    iget-object p1, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {p1, p2}, Lcom/google/maps/android/data/geojson/BiMultiMap;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lcom/google/maps/android/data/Renderer;->mLayerOnMap:Z

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    .line 159
    new-instance p2, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    invoke-direct {p2}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;-><init>()V

    iput-object p2, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    .line 160
    new-instance p2, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    invoke-direct {p2}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;-><init>()V

    iput-object p2, p0, Lcom/google/maps/android/data/Renderer;->mDefaultLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    .line 161
    new-instance p2, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    invoke-direct {p2}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;-><init>()V

    iput-object p2, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    .line 162
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    .line 163
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mContainerFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    return-void
.end method

.method static synthetic access$000(Lcom/google/maps/android/data/Renderer;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/maps/android/data/Renderer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addGeometryCollectionToMap(Lcom/google/maps/android/data/geojson/GeoJsonFeature;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/geojson/GeoJsonFeature;",
            "Ljava/util/List<",
            "Lcom/google/maps/android/data/Geometry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 747
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/Geometry;

    .line 748
    invoke-virtual {p0, p1, v1}, Lcom/google/maps/android/data/Renderer;->addGeoJsonFeatureToMap(Lcom/google/maps/android/data/Feature;Lcom/google/maps/android/data/Geometry;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 868
    invoke-static {p1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    goto :goto_0

    .line 869
    :cond_0
    iget-object p2, p0, Lcom/google/maps/android/data/Renderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 870
    iget-object p2, p0, Lcom/google/maps/android/data/Renderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private addMultiGeometryToMap(Lcom/google/maps/android/data/kml/KmlPlacemark;Lcom/google/maps/android/data/kml/KmlMultiGeometry;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;Z)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/kml/KmlPlacemark;",
            "Lcom/google/maps/android/data/kml/KmlMultiGeometry;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 799
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 800
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlMultiGeometry;->getGeometryObject()Ljava/util/ArrayList;

    move-result-object p2

    .line 801
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/maps/android/data/Geometry;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 802
    invoke-virtual/range {v2 .. v7}, Lcom/google/maps/android/data/Renderer;->addKmlPlacemarkToMap(Lcom/google/maps/android/data/kml/KmlPlacemark;Lcom/google/maps/android/data/Geometry;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private addMultiLineStringToMap(Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;",
            "Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    invoke-virtual {p2}, Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;->getLineStrings()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonLineString;

    .line 836
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->toPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/google/maps/android/data/Renderer;->addLineStringToMap(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/android/data/LineString;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private addMultiPointToMap(Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;",
            "Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 818
    invoke-virtual {p2}, Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;->getPoints()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonPoint;

    .line 819
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;->toMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/google/maps/android/data/Renderer;->addPointToMap(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/android/data/Point;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private addMultiPolygonToMap(Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;",
            "Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            ">;"
        }
    .end annotation

    .line 851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 852
    invoke-virtual {p2}, Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;->getPolygons()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;

    .line 853
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->toPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/google/maps/android/data/Renderer;->addPolygonToMap(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/android/data/DataPolygon;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createInfoWindow()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/maps/android/data/Renderer$1;

    invoke-direct {v1, p0}, Lcom/google/maps/android/data/Renderer$1;-><init>(Lcom/google/maps/android/data/Renderer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    return-void
.end method

.method protected static getPlacemarkVisibility(Lcom/google/maps/android/data/Feature;)Z
    .locals 1

    const-string v0, "visibility"

    .line 763
    invoke-virtual {p0, v0}, Lcom/google/maps/android/data/Feature;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "visibility"

    .line 764
    invoke-virtual {p0, v0}, Lcom/google/maps/android/data/Feature;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 765
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method protected static removeFeatures(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/data/Feature;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 379
    instance-of v1, v0, Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_1

    .line 380
    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_0

    .line 381
    :cond_1
    instance-of v1, v0, Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v1, :cond_2

    .line 382
    check-cast v0, Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    goto :goto_0

    .line 383
    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v1, :cond_0

    .line 384
    check-cast v0, Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static removeFromMap(Ljava/lang/Object;)V
    .locals 1

    .line 483
    instance-of v0, p0, Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 484
    check-cast p0, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    goto :goto_1

    .line 485
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_1

    .line 486
    check-cast p0, Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    goto :goto_1

    .line 487
    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/maps/model/Polygon;

    if-eqz v0, :cond_2

    .line 488
    check-cast p0, Lcom/google/android/gms/maps/model/Polygon;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_1

    .line 489
    :cond_2
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 490
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 491
    invoke-static {v0}, Lcom/google/maps/android/data/Renderer;->removeFromMap(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setFeatureDefaultStyles(Lcom/google/maps/android/data/geojson/GeoJsonFeature;)V
    .locals 1

    .line 407
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->setPointStyle(Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;)V

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getLineStringStyle()Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->setLineStringStyle(Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;)V

    .line 413
    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPolygonStyle()Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    invoke-virtual {p1, v0}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->setPolygonStyle(Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;)V

    :cond_2
    return-void
.end method

.method private setInlineLineStringStyle(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/android/data/kml/KmlStyle;)V
    .locals 2

    .line 679
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v0

    const-string v1, "outlineColor"

    .line 680
    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    :cond_0
    const-string v1, "width"

    .line 683
    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 686
    :cond_1
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->isLineRandomColorMode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 687
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result p2

    invoke-static {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->computeRandomColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    :cond_2
    return-void
.end method

.method private setInlinePointStyle(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/android/data/kml/KmlStyle;Ljava/lang/String;)V
    .locals 3

    .line 637
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    const-string v1, "heading"

    .line 638
    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    :cond_0
    const-string v1, "hotSpot"

    .line 641
    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    :cond_1
    const-string v1, "markerColor"

    .line 645
    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    :cond_2
    const-string v0, "iconUrl"

    .line 648
    invoke-virtual {p2, v0}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 649
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/maps/android/data/Renderer;->addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 652
    invoke-direct {p0, p3, p1}, Lcom/google/maps/android/data/Renderer;->addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setInlinePolygonStyle(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/android/data/kml/KmlStyle;)V
    .locals 2

    .line 718
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    .line 719
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->hasFill()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fillColor"

    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 722
    :cond_0
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->hasOutline()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "outlineColor"

    .line 723
    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    :cond_1
    const-string v1, "width"

    .line 726
    invoke-virtual {p2, v1}, Lcom/google/maps/android/data/kml/KmlStyle;->isStyleSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 727
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 730
    :cond_2
    invoke-virtual {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->isPolyRandomColorMode()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 731
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result p2

    invoke-static {p2}, Lcom/google/maps/android/data/kml/KmlStyle;->computeRandomColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    :cond_3
    return-void
.end method

.method private setMarkerInfoWindow(Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/android/gms/maps/model/Marker;Lcom/google/maps/android/data/kml/KmlPlacemark;)V
    .locals 5

    const-string v0, "name"

    .line 892
    invoke-virtual {p3, v0}, Lcom/google/maps/android/data/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "description"

    .line 893
    invoke-virtual {p3, v1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    .line 894
    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlStyle;->hasBalloonStyle()Z

    move-result v2

    .line 895
    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlStyle;->getBalloonOptions()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 897
    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlStyle;->getBalloonOptions()Ljava/util/HashMap;

    move-result-object p1

    const-string p3, "text"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 898
    invoke-direct {p0}, Lcom/google/maps/android/data/Renderer;->createInfoWindow()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const-string p1, "name"

    .line 900
    invoke-virtual {p3, p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 901
    invoke-direct {p0}, Lcom/google/maps/android/data/Renderer;->createInfoWindow()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string p1, "name"

    .line 903
    invoke-virtual {p3, p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    const-string p1, "description"

    .line 904
    invoke-virtual {p3, p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 905
    invoke-direct {p0}, Lcom/google/maps/android/data/Renderer;->createInfoWindow()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string p1, "description"

    .line 907
    invoke-virtual {p3, p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 908
    invoke-direct {p0}, Lcom/google/maps/android/data/Renderer;->createInfoWindow()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const-string p1, "name"

    .line 910
    invoke-virtual {p3, p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 911
    invoke-direct {p0}, Lcom/google/maps/android/data/Renderer;->createInfoWindow()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public addFeature(Lcom/google/maps/android/data/Feature;)V
    .locals 7

    .line 451
    sget-object v0, Lcom/google/maps/android/data/Renderer;->FEATURE_NOT_ON_MAP:Ljava/lang/Object;

    .line 452
    instance-of v1, p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    if-eqz v1, :cond_0

    .line 453
    move-object v1, p1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-direct {p0, v1}, Lcom/google/maps/android/data/Renderer;->setFeatureDefaultStyles(Lcom/google/maps/android/data/geojson/GeoJsonFeature;)V

    .line 455
    :cond_0
    iget-boolean v1, p0, Lcom/google/maps/android/data/Renderer;->mLayerOnMap:Z

    if-eqz v1, :cond_3

    .line 456
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v1, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v1, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/android/data/Renderer;->removeFromMap(Ljava/lang/Object;)V

    .line 460
    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/android/data/Feature;->hasGeometry()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    instance-of v0, p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    if-eqz v0, :cond_2

    .line 463
    invoke-static {p1}, Lcom/google/maps/android/data/Renderer;->getPlacemarkVisibility(Lcom/google/maps/android/data/Feature;)Z

    move-result v6

    .line 464
    invoke-virtual {p1}, Lcom/google/maps/android/data/Feature;->getId()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {p1}, Lcom/google/maps/android/data/Feature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v3

    .line 466
    invoke-virtual {p0, v0}, Lcom/google/maps/android/data/Renderer;->getPlacemarkStyle(Ljava/lang/String;)Lcom/google/maps/android/data/kml/KmlStyle;

    move-result-object v4

    .line 467
    move-object v2, p1

    check-cast v2, Lcom/google/maps/android/data/kml/KmlPlacemark;

    invoke-virtual {v2}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getInlineStyle()Lcom/google/maps/android/data/kml/KmlStyle;

    move-result-object v5

    move-object v1, p0

    .line 468
    invoke-virtual/range {v1 .. v6}, Lcom/google/maps/android/data/Renderer;->addKmlPlacemarkToMap(Lcom/google/maps/android/data/kml/KmlPlacemark;Lcom/google/maps/android/data/Geometry;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {p1}, Lcom/google/maps/android/data/Feature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/maps/android/data/Renderer;->addGeoJsonFeatureToMap(Lcom/google/maps/android/data/Feature;Lcom/google/maps/android/data/Geometry;)Ljava/lang/Object;

    move-result-object v0

    .line 474
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v1, p1, v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected addGeoJsonFeatureToMap(Lcom/google/maps/android/data/Feature;Lcom/google/maps/android/data/Geometry;)Ljava/lang/Object;
    .locals 2

    .line 504
    invoke-interface {p2}, Lcom/google/maps/android/data/Geometry;->getGeometryType()Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "GeometryCollection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "LineString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "Polygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "Point"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v1, "MultiLineString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "MultiPoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "MultiPolygon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v1

    .line 540
    :pswitch_0
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonGeometryCollection;

    .line 541
    invoke-virtual {p2}, Lcom/google/maps/android/data/geojson/GeoJsonGeometryCollection;->getGeometries()Ljava/util/List;

    move-result-object p2

    .line 540
    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/data/Renderer;->addGeometryCollectionToMap(Lcom/google/maps/android/data/geojson/GeoJsonFeature;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 537
    :pswitch_1
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPolygonStyle()Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    move-result-object p1

    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;

    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/data/Renderer;->addMultiPolygonToMap(Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiPolygon;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 534
    :pswitch_2
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getLineStringStyle()Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    move-result-object p1

    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;

    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/data/Renderer;->addMultiLineStringToMap(Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiLineString;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 531
    :pswitch_3
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPointStyle()Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    move-result-object p1

    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;

    invoke-direct {p0, p1, p2}, Lcom/google/maps/android/data/Renderer;->addMultiPointToMap(Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;Lcom/google/maps/android/data/geojson/GeoJsonMultiPoint;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 524
    :pswitch_4
    instance-of v0, p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    if-eqz v0, :cond_1

    .line 525
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    goto :goto_2

    .line 526
    :cond_1
    instance-of v0, p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    if-eqz v0, :cond_2

    .line 527
    check-cast p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    .line 529
    :cond_2
    :goto_2
    check-cast p2, Lcom/google/maps/android/data/DataPolygon;

    invoke-virtual {p0, v1, p2}, Lcom/google/maps/android/data/Renderer;->addPolygonToMap(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/android/data/DataPolygon;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object p1

    return-object p1

    .line 516
    :pswitch_5
    instance-of v0, p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    if-eqz v0, :cond_3

    .line 517
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    goto :goto_3

    .line 518
    :cond_3
    instance-of v0, p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    if-eqz v0, :cond_4

    .line 519
    check-cast p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    .line 521
    :cond_4
    :goto_3
    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonLineString;

    invoke-virtual {p0, v1, p2}, Lcom/google/maps/android/data/Renderer;->addLineStringToMap(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/android/data/LineString;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    return-object p1

    .line 508
    :pswitch_6
    instance-of v0, p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    if-eqz v0, :cond_5

    .line 509
    check-cast p1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    goto :goto_4

    .line 510
    :cond_5
    instance-of v0, p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    if-eqz v0, :cond_6

    .line 511
    check-cast p1, Lcom/google/maps/android/data/kml/KmlPlacemark;

    invoke-virtual {p1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 513
    :cond_6
    :goto_4
    check-cast p2, Lcom/google/maps/android/data/geojson/GeoJsonPoint;

    invoke-virtual {p0, v1, p2}, Lcom/google/maps/android/data/Renderer;->addPointToMap(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/android/data/Point;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7e2b361f -> :sswitch_6
        -0x3f883809 -> :sswitch_5
        -0x2560d4e2 -> :sswitch_4
        0x49b6570 -> :sswitch_3
        0x4b86ed1a -> :sswitch_2
        0x6bb01145 -> :sswitch_1
        0x7440e8d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected addKmlPlacemarkToMap(Lcom/google/maps/android/data/kml/KmlPlacemark;Lcom/google/maps/android/data/Geometry;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;Z)Ljava/lang/Object;
    .locals 10

    .line 556
    invoke-interface {p2}, Lcom/google/maps/android/data/Geometry;->getGeometryType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawOrder"

    .line 557
    invoke-virtual {p1, v1}, Lcom/google/maps/android/data/kml/KmlPlacemark;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    const-string v4, "drawOrder"

    .line 562
    invoke-virtual {p1, v4}, Lcom/google/maps/android/data/kml/KmlPlacemark;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v4, -0x1

    .line 567
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x49b6570

    if-eq v5, v6, :cond_4

    const v2, 0x55028ab

    if-eq v5, v2, :cond_3

    const v2, 0x4b86ed1a    # 1.7685044E7f

    if-eq v5, v2, :cond_2

    const v2, 0x6bb01145

    if-eq v5, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "LineString"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const-string v2, "Polygon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    const-string v2, "MultiGeometry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    :cond_4
    const-string v5, "Point"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 610
    :pswitch_0
    move-object v6, p2

    check-cast v6, Lcom/google/maps/android/data/kml/KmlMultiGeometry;

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/maps/android/data/Renderer;->addMultiGeometryToMap(Lcom/google/maps/android/data/kml/KmlPlacemark;Lcom/google/maps/android/data/kml/KmlMultiGeometry;Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/maps/android/data/kml/KmlStyle;Z)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 597
    :pswitch_1
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getPolygonOptions()Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    if-eqz p4, :cond_6

    .line 599
    invoke-direct {p0, p1, p4}, Lcom/google/maps/android/data/Renderer;->setInlinePolygonStyle(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/android/data/kml/KmlStyle;)V

    goto :goto_3

    .line 600
    :cond_6
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->isPolyRandomColorMode()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 601
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolygonOptions;->getFillColor()I

    move-result p3

    invoke-static {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->computeRandomColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 603
    :cond_7
    :goto_3
    check-cast p2, Lcom/google/maps/android/data/DataPolygon;

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/android/data/Renderer;->addPolygonToMap(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/android/data/DataPolygon;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object p1

    .line 604
    invoke-virtual {p1, p5}, Lcom/google/android/gms/maps/model/Polygon;->setVisible(Z)V

    if-eqz v1, :cond_8

    .line 606
    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/model/Polygon;->setZIndex(F)V

    :cond_8
    return-object p1

    .line 584
    :pswitch_2
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getPolylineOptions()Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    if-eqz p4, :cond_9

    .line 586
    invoke-direct {p0, p1, p4}, Lcom/google/maps/android/data/Renderer;->setInlineLineStringStyle(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/android/data/kml/KmlStyle;)V

    goto :goto_4

    .line 587
    :cond_9
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->isLineRandomColorMode()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 588
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->getColor()I

    move-result p3

    invoke-static {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->computeRandomColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 590
    :cond_a
    :goto_4
    check-cast p2, Lcom/google/maps/android/data/LineString;

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/android/data/Renderer;->addLineStringToMap(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/android/data/LineString;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    .line 591
    invoke-virtual {p1, p5}, Lcom/google/android/gms/maps/model/Polyline;->setVisible(Z)V

    if-eqz v1, :cond_b

    .line 593
    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/model/Polyline;->setZIndex(F)V

    :cond_b
    return-object p1

    .line 569
    :pswitch_3
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getMarkerOptions()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    if-eqz p4, :cond_c

    .line 571
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p4, v2}, Lcom/google/maps/android/data/Renderer;->setInlinePointStyle(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/android/data/kml/KmlStyle;Ljava/lang/String;)V

    goto :goto_5

    .line 572
    :cond_c
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_d

    .line 574
    invoke-virtual {p3}, Lcom/google/maps/android/data/kml/KmlStyle;->getIconUrl()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4, v0}, Lcom/google/maps/android/data/Renderer;->addMarkerIcons(Ljava/lang/String;Lcom/google/android/gms/maps/model/MarkerOptions;)V

    .line 576
    :cond_d
    :goto_5
    check-cast p2, Lcom/google/maps/android/data/kml/KmlPoint;

    invoke-virtual {p0, v0, p2}, Lcom/google/maps/android/data/Renderer;->addPointToMap(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/android/data/Point;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p2

    .line 577
    invoke-virtual {p2, p5}, Lcom/google/android/gms/maps/model/Marker;->setVisible(Z)V

    .line 578
    invoke-direct {p0, p3, p2, p1}, Lcom/google/maps/android/data/Renderer;->setMarkerInfoWindow(Lcom/google/maps/android/data/kml/KmlStyle;Lcom/google/android/gms/maps/model/Marker;Lcom/google/maps/android/data/kml/KmlPlacemark;)V

    if-eqz v1, :cond_e

    .line 580
    invoke-virtual {p2, v3}, Lcom/google/android/gms/maps/model/Marker;->setZIndex(F)V

    :cond_e
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected addLineStringToMap(Lcom/google/android/gms/maps/model/PolylineOptions;Lcom/google/maps/android/data/LineString;)Lcom/google/android/gms/maps/model/Polyline;
    .locals 0

    .line 666
    invoke-virtual {p2}, Lcom/google/maps/android/data/LineString;->getGeometryObject()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    .line 667
    iget-object p2, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    .line 668
    iget-boolean p2, p0, Lcom/google/maps/android/data/Renderer;->mPolygonsClickable:Z

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Polyline;->setClickable(Z)V

    return-object p1
.end method

.method protected addPointToMap(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/google/maps/android/data/Point;)Lcom/google/android/gms/maps/model/Marker;
    .locals 0

    .line 624
    invoke-virtual {p2}, Lcom/google/maps/android/data/Point;->getGeometryObject()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 625
    iget-object p2, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    return-object p1
.end method

.method protected addPolygonToMap(Lcom/google/android/gms/maps/model/PolygonOptions;Lcom/google/maps/android/data/DataPolygon;)Lcom/google/android/gms/maps/model/Polygon;
    .locals 1

    .line 700
    invoke-interface {p2}, Lcom/google/maps/android/data/DataPolygon;->getOuterBoundaryCoordinates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 702
    invoke-interface {p2}, Lcom/google/maps/android/data/DataPolygon;->getInnerBoundaryCoordinates()Ljava/util/List;

    move-result-object p2

    .line 703
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 704
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/PolygonOptions;->addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    goto :goto_0

    .line 706
    :cond_0
    iget-object p2, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object p1

    .line 707
    iget-boolean p2, p0, Lcom/google/maps/android/data/Renderer;->mPolygonsClickable:Z

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Polygon;->setClickable(Z)V

    return-object p1
.end method

.method public assignStyleMap(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;)V"
        }
    .end annotation

    .line 780
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 781
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 782
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public attachGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/GroundOverlay;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/GroundOverlay;

    move-result-object p1

    return-object p1
.end method

.method public clearStylesRenderer()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected getAllFeatures()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "+",
            "Lcom/google/maps/android/data/Feature;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    return-object v0
.end method

.method public getContainerFeature(Ljava/lang/Object;)Lcom/google/maps/android/data/Feature;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mContainerFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mContainerFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/maps/android/data/Feature;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContainerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/kml/KmlContainer;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mContainers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultLineStringStyle()Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultLineStringStyle:Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    return-object v0
.end method

.method public getDefaultPointStyle()Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPointStyle:Lcom/google/maps/android/data/geojson/GeoJsonPointStyle;

    return-object v0
.end method

.method public getDefaultPolygonStyle()Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mDefaultPolygonStyle:Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    return-object v0
.end method

.method public getFeature(Ljava/lang/Object;)Lcom/google/maps/android/data/Feature;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/maps/android/data/Feature;

    return-object p1
.end method

.method public getFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/maps/android/data/Feature;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getGroundOverlayMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/data/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mGroundOverlays:Ljava/util/HashMap;

    return-object v0
.end method

.method public getImagesCache()Landroid/support/v4/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method public getMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method public getMarkerIconUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mMarkerIconUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getPlacemarkStyle(Ljava/lang/String;)Lcom/google/maps/android/data/kml/KmlStyle;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/android/data/kml/KmlStyle;

    .line 301
    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/maps/android/data/kml/KmlStyle;

    :cond_0
    return-object v0
.end method

.method public getPolygonsClickable()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/google/maps/android/data/Renderer;->mPolygonsClickable:Z

    return v0
.end method

.method public getStyleMaps()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStyleMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStylesRenderer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hasFeatures()Z
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/BiMultiMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayerOnMap()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/google/maps/android/data/Renderer;->mLayerOnMap:Z

    return v0
.end method

.method protected putContainerFeature(Ljava/lang/Object;Lcom/google/maps/android/data/Feature;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mContainerFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p2, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putFeatures(Lcom/google/maps/android/data/Feature;Ljava/lang/Object;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/android/data/geojson/BiMultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putImagesCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mImagesCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStyles()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/maps/android/data/Renderer;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public putStyles(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;)V"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mStylesRenderer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected removeFeature(Lcom/google/maps/android/data/Feature;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {v0, p1}, Lcom/google/maps/android/data/geojson/BiMultiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/maps/android/data/Renderer;->removeFromMap(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected setLayerVisibility(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/google/maps/android/data/Renderer;->mLayerOnMap:Z

    return-void
.end method

.method public setMap(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method

.method public setPolygonsClickable(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/google/maps/android/data/Renderer;->mPolygonsClickable:Z

    return-void
.end method

.method protected storeData(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/maps/android/data/kml/KmlStyle;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/data/kml/KmlPlacemark;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/maps/android/data/kml/KmlContainer;",
            ">;",
            "Ljava/util/HashMap<",
            "Lcom/google/maps/android/data/kml/KmlGroundOverlay;",
            "Lcom/google/android/gms/maps/model/GroundOverlay;",
            ">;)V"
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lcom/google/maps/android/data/Renderer;->mStyles:Ljava/util/HashMap;

    .line 439
    iput-object p2, p0, Lcom/google/maps/android/data/Renderer;->mStyleMaps:Ljava/util/HashMap;

    .line 440
    iget-object p1, p0, Lcom/google/maps/android/data/Renderer;->mFeatures:Lcom/google/maps/android/data/geojson/BiMultiMap;

    invoke-virtual {p1, p3}, Lcom/google/maps/android/data/geojson/BiMultiMap;->putAll(Ljava/util/Map;)V

    .line 441
    iput-object p4, p0, Lcom/google/maps/android/data/Renderer;->mContainers:Ljava/util/ArrayList;

    .line 442
    iput-object p5, p0, Lcom/google/maps/android/data/Renderer;->mGroundOverlays:Ljava/util/HashMap;

    return-void
.end method
